
#pragma once
#include "fusion-c/header/msx_fusion.h"
//Para la función de setSpritePatter y SC5ColorSprite
#include "fusion-c/header/vdp_sprites.h"
#include "fusion-c/header/pt3replayer.h"
//#include "fusion-c/header/ayfx_player.h"
#include "src/man/entity.c"
#include "src/sys/physics.c"
#include "src/sys/render.c"
#include "src/man/files.c"
#include "src/sprites/player.c"


void man_game_init();
void man_game_play();
void man_game_update();
void man_game_pintarMapa();
void man_game_showBuffer();
void man_game_copiarSpritesVRAM();
void man_game_cargar_buffer_musica();
void man_game_cargar_buffer_efectos_sonido();
void man_game_reproducir_musica_y_efectos();
void man_game_reproducir_efecto_sonido(char effect);
void wait();

//Efectos
#define SONG_EFFECT_TAM 1207
unsigned char songEffectsBuffer[SONG_EFFECT_TAM]; 
char fileNameSongEffects[]={"effects.afb"};
FCB TFileEffects; 

//Music
#define SONG_BUFFER_TAM 264
unsigned char songBuffer[SONG_BUFFER_TAM];  
char fileNameSong[]={"song1.pt3"};
FCB TFileMusic;




TEntity* player;
char actual_world;
char world_change;

void man_game_init(){
    //Inicializamos la pantalla en screen 5
    sys_render_init();
    //Cargamos la imagen de carga del archivo a la RAM
    //char *image_loader_name[]={"LOADER.S05"};
    load_file_into_buffer_with_structure("LOADER.S05");
    //Pasamos los datos de la RAM a la VRAM page 0
    HMMC(&buffer[0], 0,0,256,212 ); 
    //memset(buffer,0,sizeof(buffer));
    //El juego solo tendrá un archivo de tileset con todos los tiles
    load_file_into_buffer("tileset.s05");
    //Pasamos todos los tileset a la page 1, fijate:
    // 1. que hemos puesto en inicio y: 256.
    // 2. Hemos utilizado LMMC que nos permite introducir la transparencia
    HMMC(&buffer[0], 0,256,256,212); 
    //Cargamos los sprites
    load_file_into_buffer("sprites.bin");
    //Los pasamos a la VRAM
    man_game_copiarSpritesVRAM();

    //Cargamos los efectos de sonido   
    //InitFX();
    //man_game_cargar_buffer_efectos_sonido();
    //Cargamos la música
    InitPSG();
    man_game_cargar_buffer_musica();
    //load_file_into_buffer_with_structure("song1.pt3");
    PT3Init (songBuffer+99, 0);

    SetRealTimer(0);	
    KeySound(0);
    //Ponemos que el 1 mundo sea el 0
    actual_world=0;
    //Le ponemos que aplique que el mapa ha cambiado para que ponga
    // los objetos, enemigos y la posición del player del mundo correspondiente
    // Esto se aplica en el método man_game_update
    world_change=1;
    //creamos al player
    player=sys_entity_create_player();
    PutText(25,20, "Press any key to continue",0);
    WaitKey();
}

void man_game_play(){
    do{
        //Musica y efectos
        man_game_reproducir_musica_y_efectos();
        //Player
        sys_physics_update(player);
        sys_render_update(player);
        //Game
        man_game_update();
        //Pausa
        wait();
    }while(1);
}

void man_game_update(){
    if (world_change==1){
        Cls();
        if (actual_world==0){
            char fileNameTileMap1[]="world0.bin";
            //load_file_into_buffer("world0.bin");
            load_file_into_buffer_with_structure("world0.bin");
            man_game_pintarMapa();
            //showBuffer();
        }
        world_change=0;
    }
}

void man_game_pintarMapa(){
    char numeroColumnas=32;
    char numeroFilas=23;
    for (int f=0; f<numeroFilas;f++){
        for (int c=0; c<numeroColumnas;c++){
            //para tiles de 16*16, columnas 16, filas 11
            //HMMM(((buffer[c+(f*numeroColumnas)]-(buffer[c+(f*numeroColumnas)]/32)*32))*32,(buffer[f*numeroColumnas+c]/32)*32+256, c*32,f*32,32,32);
            HMMM(((buffer[f*numeroColumnas+c]-(buffer[f*numeroColumnas+c]/32)*32))*8,(buffer[f*numeroColumnas+c]/32)*8+256, c*8,f*8,8,8);
        }
    }
}

void man_game_showBuffer(){
    Cls();
    Screen(1);
    signed int dir=0;
    printf("%d",&buffer[0]);
    printf("\r\n");
    char numeroColumnas=16;
    char numeroFilas=11;
    int tileX=0;
    for (int f=0; f<8;f++){
        printf("\r\nFila %d\r\n  ",f);
        for (int c=0; c<numeroColumnas;c++){
            printf("%d",buffer[c+(16*f)]-(16*f));
            //printf("%d  ",tileX);
        } 
    }
}
void man_game_copiarSpritesVRAM(){
    char sprite=0;
    char siguiente = 0;	
	for (char i=0; i<4; i++) {		
		//SetSpritePattern(sprite, &buffer[siguiente],32);
        //También es posible cargar los sprites como datos, si antes hemos sacado
        // los datos del spritedevtool, habilita el include
		SetSpritePattern(sprite, &SPRITE_DATA_PLAYER[siguiente],32);
        SC5SpriteColors(i, &COLOR_DATA_PLAYER[0]);
		siguiente += 32;
        sprite+=4;
	}
    //Screen(1);
    //printf("%d", &buffer[0]);

	// Tablas patrones	
//	CopyRamToVram (&tab_sprites_from_fichero[0], dirBaseTablaSpritesPatrones, TAM_SpritesPatrones);
}

void wait(){
    __asm
      halt
      halt
      halt
  __endasm;
}
void man_game_cargar_buffer_musica(){
    enter_name_and_extension_in_structure( &TFileMusic, &fileNameSong[0]);
    fcb_open( &TFileMusic );
    fcb_read( &TFileMusic, &songBuffer[0], SONG_BUFFER_TAM );  
    fcb_close( &TFileMusic );
}
void man_game_reproducir_musica_y_efectos(){
    //Musica
    DisableInterupt();
    PT3Rout();
    PT3Play();
    //Si se está reproduciendo un efecto se actualizará
    /*if (TestFX()==1){
      if (JIFFY!=0){
        JIFFY=0;
        UpdateFX();
      }
    }*/
    EnableInterupt();
}

void man_game_cargar_buffer_efectos_sonido(){

  //afbdb es un puntero que está definido en ayfx_player.h
  /*afbdata=MMalloc(SONG_EFFECT_TAM);
  enter_name_and_extension_in_structure( &TFileEffects, "effects.afb");
  fcb_open( &TFileEffects );
  fcb_read( &TFileEffects, afbdata, SONG_EFFECT_TAM );  
  fcb_close( &TFileEffects );*/
}

void man_game_reproducir_efecto_sonido(char effect){
  //El 1 es un ruido flojo y corto
  //2 dos ruidos cortos y flojos
  // 3 un rebote
  // 4 son 5 captanillas que van desapareciendo
  // 5 3 captanillas cortas
  // 6 rayo laser pistola
  // 7 laser que va desapareciendo
  // 8 explosión que va desapareciendo
  // 9 golpe con explosión
  // 10 una especie de robot
  //man_game_sincronizaFX(150);
  //PlayFX(effect);
}