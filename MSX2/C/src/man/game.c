
#pragma once
#include "fusion-c/header/msx_fusion.h"
//Para la función de setSpritePatter y SC5ColorSprite
#include "fusion-c/header/vdp_sprites.h"
#include "fusion-c/header/pt3replayer.h"
//#include "fusion-c/header/ayfx_player.h"
#include "src/man/entity.c"
#include "src/sys/physics.c"
#include "src/sys/render.c"
#include "src/sys/collider.c"
#include "src/sys/ai.c"
#include "src/man/files.c"
#include "src/man/sprites.c"


void man_game_init();
void man_game_play();
void man_game_update();
void man_game_check_change_world();
void man_game_pintarMapa();
void man_game_showBuffer();
void man_game_copiarSpritesVRAM();
void man_game_cargar_buffer_musica();
void man_game_cargar_buffer_efectos_sonido();
void man_game_reproducir_musica_y_efectos();
void man_game_reproducir_efecto_sonido(char effect);

void wait();
void debug();
void pintar_HUD();
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
unsigned long time;
unsigned int hours,minutes,secunds;
unsigned int memory_space;

TEntity* array_enemies;

int resultado;
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
    PutText(0,0, "Eres un vigilante y como siempre estas durmiendo te han robado.",0);
    PutText(0,16, "Atrapa a todos los ladr0nes y recoge las monedas que han ido perdiendo.",0);
    PutText(20,180, "Press any key to continue",0);
    WaitKey();
}

void man_game_play(){
    do{
        //Musica y efectos
        //man_game_reproducir_musica_y_efectos();
        //Player
        sys_physics_update(player);
        sys_render_update(player);
        //Enemigos
        for (char i=0;i<sys_entity_get_num_enemies();++i){
            TEntity *enemy=&array_enemies[i];
            //Le aplicamos un comportamiento a los enemigos según el tipo de enemigo que sea
            sys_ai_update(enemy);
            sys_render_update(enemy);
        }

        //Game
        man_game_update();
        //
        //debug();
        //Pausa
        wait();

    }while(1);
}

void man_game_update(){
    if (world_change==1){
        Cls();
        if (actual_world==0){
            //Leemos el mapa
            load_file_into_buffer_with_structure("world0.bin");
            //Ponemos el player
            //20*8 es el suelo
            player->x=8*2;
            player->y=8*19;
            //Creamos los enemigos
            TEntity *enemy1=sys_entity_create_enemy1();
            TEntity *enemy2=sys_entity_create_enemy1();
            enemy2->plane=enemy1_plane+sys_entity_get_num_enemies();
            enemy2->x=4*8;
            enemy2->y=9*8;
            enemy2->dir=7;
            TEntity *enemy3=sys_entity_create_enemy1();
            enemy3->plane=enemy1_plane+sys_entity_get_num_enemies();
            enemy3->x=6*8;
            enemy3->y=15*8;
            TEntity *enemy4=sys_entity_create_enemy1();
            enemy4->plane=enemy1_plane+sys_entity_get_num_enemies();
            enemy4->x=20*8;
            enemy4->y=20*8;
            
            
            //man_game_showBuffer();
        }else if (actual_world==1){
            load_file_into_buffer_with_structure("world1.bin");
            player->x=8*2;
            player->y=8*20;
        }
        man_game_pintarMapa();
        array_enemies=sys_entity_get_array_structs_enemies();
        pintar_HUD();
        world_change=0;
    }
    man_game_check_change_world();
}
void man_game_check_change_world(){
    if (sys_collider_get_tile_array(player)==tile_end_level1 || sys_collider_get_tile_array(player)==tile_end_level2 ){
        world_change=1;
        actual_world+=1;
    }
}

void man_game_pintarMapa(){
    char numeroColumnas=32;
    char numeroFilas=23;
    char filaEnTileset=0;
    char columnaEnTileset=0;
    for (char f=0; f<numeroFilas;f++){
        for (char c=0; c<numeroColumnas;c++){
            //para tiles de 32*8 de ancho 23*8 de alto
            columnaEnTileset=(((buffer[c+(f*numeroColumnas)]/32)+1)*32)-(buffer[c+(f*numeroColumnas)]);
            resultado=(32-columnaEnTileset)*8;
            HMMM(resultado,(buffer[c+(f*numeroColumnas)]/32)*8+256, c*8,f*8,8,8);
        }
    }
}

void man_game_showBuffer(){
    Cls();
    Screen(1);
    unsigned int dir=0;
    printf("%d",&buffer[0]);
    printf("\r\n");
    int numeroColumnas=32;
    int numeroFilas=6;
    int columnaEnTileset=0;
    for (int f=4; f<numeroFilas;f++){
        printf("\r\nFila %d\r\n  ",f);
        for (int c=0; c<numeroColumnas;c++){
            columnaEnTileset=(((buffer[c+(f*numeroColumnas)]/32)+1)*32)-(buffer[c+(f*numeroColumnas)]);
            resultado=(32-columnaEnTileset)*8;
            printf("%d ",((buffer[c+(f*numeroColumnas)]/32)+1)*32);
            
        } 
    }
}
void man_game_copiarSpritesVRAM(){
    unsigned int sprite=0;
    unsigned int siguiente = 0;	
	for (char i=0; i<13; i++) {		
		//SetSpritePattern(sprite, &buffer[siguiente],32);
        //También es posible cargar los sprites como datos, si antes hemos sacado
        // los datos del spritedevtool, habilita el include
		SetSpritePattern(sprite, &SPRITE_DATA[siguiente],32);
        SC5SpriteColors(i, &COLOR_DATA[0]);
		siguiente += 32;
        sprite+=4;
	}
    //Screen(1);
    //printf("%d", &buffer[0]);
	//Tablas patrones	
    //CopyRamToVram (&tab_sprites_from_fichero[0], dirBaseTablaSpritesPatrones, TAM_SpritesPatrones);
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

void debug(){
    //void Rect ( int X1, int Y1, int X2, int Y2, int color, int OP )
    //void BoxFill (int X1, int Y1, int X2, int yY22, char color, char OP )
    //time=RealTimer();      // Read Current Timer Value
    //minutes=time/3000;           
    //secunds=time/50;
    BoxFill (0, 23*8, 256, 210, 6, LOGICAL_IMP );
    PutText(0,200,Itoa(sys_collider_get_tile_down_array(player),"  ",10),8);
    PutText(50,200,Itoa(tile_stairs1,"  ",10),8);
    PutText(100,200,Itoa(sys_entity_get_num_enemies(),"  ",10),8);
 

    //Screen(1);
    //printf("%d",buffer);
  
    //unsigned char *buf=getBuffer();
    //PutText(150,200,Itoa(buf[0],"  ",10),8);
    //PutText(0,200,Itoa(hours,"  ",10),8);
    //PutText(50,200,Itoa(minutes,"  ",10),8);
    //if(secunds>59)secunds=0;
    //PutText(100,200,Itoa(secunds-60,"  ",10),8);
    //memory_space=Peekw(0x0006);
    //PutText(150,200,Itoa(memory_space,"  ",10),8);
}

void pintar_HUD(){
    HMMM(0,256+16,0,184,16,16);
    HMMM(16,256+16,0,200,16,16);
    PutText(20,184+4,Itoa(actual_world,"  ",10),8);
    PutText(20,200+4,Itoa(player->energy,"  ",10),8);
}
