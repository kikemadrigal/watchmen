;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _rand
	.globl _HMMM
	.globl _HMMC
	.globl _BoxFill
	.globl _getBuffer
	.globl _puts
	.globl _printf
	.globl _Read
	.globl _Close
	.globl _Open
	.globl _sys_entity_get_max_shot
	.globl _sys_entity_get_array_structs_objects
	.globl _sys_entity_get_array_structs_shots
	.globl _sys_entity_get_array_structs_enemies
	.globl _sys_entity_erase_all_enemies
	.globl _sys_entity_create_object
	.globl _sys_entity_create_shot
	.globl _sys_entity_create_enemy1
	.globl _PT3Rout
	.globl _PT3Play
	.globl _PT3Init
	.globl _SC5SpriteColors
	.globl _SetSpritePattern
	.globl _PutSprite
	.globl _SpriteReset
	.globl _SpriteSmall
	.globl _Sprite16
	.globl _fcb_read
	.globl _fcb_close
	.globl _fcb_open
	.globl _InitPSG
	.globl _Itoa
	.globl _WaitKey
	.globl _PutText
	.globl _SetColors
	.globl _TriggerRead
	.globl _JoystickRead
	.globl _SetRealTimer
	.globl _Screen
	.globl _Cls
	.globl _KeySound
	.globl _fileNameSong
	.globl _fileNameSongEffects
	.globl _COLOR_DATA
	.globl _SPRITE_DATA
	.globl _resultado
	.globl _array_enemies
	.globl _memory_space
	.globl _secunds
	.globl _minutes
	.globl _hours
	.globl _time
	.globl _world_change
	.globl _actual_world
	.globl _player
	.globl _TFileMusic
	.globl _songBuffer
	.globl _TFileEffects
	.globl _songEffectsBuffer
	.globl _sys_ai_contador
	.globl _array_jump
	.globl _contador_jump
	.globl _bufferDir
	.globl _buffer
	.globl _num_objects
	.globl _num_shots
	.globl _num_enemies
	.globl _array_structs_objects
	.globl _array_structs_shots
	.globl _array_structs_enemies
	.globl _shot_template
	.globl _enemy1_template
	.globl _object_template
	.globl _player_template
	.globl _sys_entities_init
	.globl _sys_entity_create_player
	.globl _sys_entity_erase_enemy
	.globl _sys_entity_erase_shot
	.globl _sys_entity_erase_object
	.globl _sys_entity_get_num_enemies
	.globl _sys_entity_get_num_shots
	.globl _sys_entity_get_num_objects
	.globl _sys_entity_get_max_enemies
	.globl _sys_entity_get_max_objects
	.globl _sys_anim_init
	.globl _sys_anim_update
	.globl _load_file_into_buffer_with_structure
	.globl _load_file_into_buffer
	.globl _enter_name_and_extension_in_structure
	.globl _sys_collider_init
	.globl _sys_collider_get_column_entity
	.globl _sys_collider_get_file_entity
	.globl _sys_collider_get_tile_array
	.globl _sys_collider_get_tile_down_array
	.globl _sys_collider_get_tile_right_array
	.globl _sys_collider_get_tile_left_array
	.globl _sys_physics_update
	.globl _sys_physics_check_keyboard
	.globl _entity_jump
	.globl _sys_render_init
	.globl _sys_render_update
	.globl _sys_render_update_player
	.globl _sys_render_update_enemy
	.globl _sys_render_update_shot
	.globl _sys_render_update_object
	.globl _sys_ai_init
	.globl _sys_ai_update
	.globl _sys_ai_update_enemy_behavior_1
	.globl _sys_ai_update_enemy_boss1
	.globl _man_game_init
	.globl _man_game_play
	.globl _man_game_update
	.globl _man_game_check_change_world
	.globl _man_game_pintarMapa
	.globl _man_game_showBuffer
	.globl _man_game_copiarSpritesVRAM
	.globl _wait
	.globl _man_game_cargar_buffer_musica
	.globl _man_game_reproducir_musica_y_efectos
	.globl _man_game_cargar_buffer_efectos_sonido
	.globl _man_game_reproducir_efecto_sonido
	.globl _debug
	.globl _pintar_HUD
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_array_structs_enemies::
	.ds 220
_array_structs_shots::
	.ds 220
_array_structs_objects::
	.ds 220
_num_enemies::
	.ds 1
_num_shots::
	.ds 1
_num_objects::
	.ds 1
_buffer::
	.ds 27142
_bufferDir::
	.ds 2
_contador_jump::
	.ds 1
_array_jump::
	.ds 5
_sys_ai_contador::
	.ds 2
_songEffectsBuffer::
	.ds 1207
_TFileEffects::
	.ds 37
_songBuffer::
	.ds 264
_TFileMusic::
	.ds 37
_player::
	.ds 2
_actual_world::
	.ds 1
_world_change::
	.ds 1
_time::
	.ds 4
_hours::
	.ds 2
_minutes::
	.ds 2
_secunds::
	.ds 2
_memory_space::
	.ds 2
_array_enemies::
	.ds 2
_resultado::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_SPRITE_DATA::
	.ds 384
_COLOR_DATA::
	.ds 192
_fileNameSongEffects::
	.ds 12
_fileNameSong::
	.ds 10
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:152: void sys_entities_init(){
;	---------------------------------
; Function sys_entities_init
; ---------------------------------
_sys_entities_init::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:155: memset(array_structs_enemies,0,sizeof(array_structs_enemies) );
	ld	hl, #_array_structs_enemies
	ld	b, #0xdc
00103$:
	ld	(hl), #0x00
	inc	hl
	djnz	00103$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:156: memset(array_structs_shots,0,sizeof(array_structs_shots) );
	ld	hl, #_array_structs_shots
	ld	b, #0xdc
00105$:
	ld	(hl), #0x00
	inc	hl
	djnz	00105$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:157: memset(array_structs_objects,0,sizeof(array_structs_objects) );
	ld	hl, #_array_structs_objects
	ld	b, #0xdc
00107$:
	ld	(hl), #0x00
	inc	hl
	djnz	00107$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:158: num_enemies=0;
	ld	hl,#_num_enemies + 0
	ld	(hl), #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:159: num_shots=0;
	ld	hl,#_num_shots + 0
	ld	(hl), #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:160: num_objects=0;
	ld	hl,#_num_objects + 0
	ld	(hl), #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:161: }
	ret
_Done_Version:
	.ascii "Made with FUSION-C 1.2 (ebsoft)"
	.db 0x00
_player_template:
	.db #0x01	; 1
	.db #0x07	; 7
	.dw #0x0000
	.dw #0x0000
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x04	;  4
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x64	; 100	'd'
	.dw #0x0000
_object_template:
	.db #0x16	; 22
	.db #0x03	; 3
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x64	; 100	'd'
	.dw #0x0000
_enemy1_template:
	.db #0x02	; 2
	.db #0x03	; 3
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	;  4
	.db #0x04	;  4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x64	; 100	'd'
	.dw #0x0000
_shot_template:
	.db #0x10	; 16
	.db #0x03	; 3
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x64	; 100	'd'
	.dw #0x0000
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:165: TEntity* sys_entity_create_player(){
;	---------------------------------
; Function sys_entity_create_player
; ---------------------------------
_sys_entity_create_player::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:166: return &player_template;
	ld	hl, #_player_template
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:167: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:168: TEntity* sys_entity_create_enemy1(){
;	---------------------------------
; Function sys_entity_create_enemy1
; ---------------------------------
_sys_entity_create_enemy1::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:169: TEntity* enemy=&array_structs_enemies[num_enemies];
	ld	bc, #_array_structs_enemies+0
	ld	de, (_num_enemies)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:170: memcpy(enemy,&enemy1_template,sizeof(TEntity));
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #_enemy1_template
	ld	bc, #0x0016
	ldir
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:171: ++num_enemies;
	ld	hl, #_num_enemies+0
	inc	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:172: return enemy;
	ld	l, c
	ld	h, b
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:173: }  
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:174: TEntity* sys_entity_create_shot(){
;	---------------------------------
; Function sys_entity_create_shot
; ---------------------------------
_sys_entity_create_shot::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:175: TEntity* shot=&array_structs_shots[num_shots]; 
	ld	bc, #_array_structs_shots+0
	ld	de, (_num_shots)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:176: memcpy(shot,&shot_template,sizeof(TEntity));
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #_shot_template
	ld	bc, #0x0016
	ldir
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:177: ++num_shots;
	ld	hl, #_num_shots+0
	inc	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:180: return shot;
	ld	l, c
	ld	h, b
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:181: }  
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:182: TEntity* sys_entity_create_object(){
;	---------------------------------
; Function sys_entity_create_object
; ---------------------------------
_sys_entity_create_object::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:183: TEntity* object=&array_structs_objects[num_objects];
	ld	bc, #_array_structs_objects+0
	ld	de, (_num_objects)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:184: memcpy(object,&object_template,sizeof(TEntity));
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #_object_template
	ld	bc, #0x0016
	ldir
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:185: ++num_objects;
	ld	hl, #_num_objects+0
	inc	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:188: return object;
	ld	l, c
	ld	h, b
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:189: }  
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:191: void sys_entity_erase_enemy(char i){
;	---------------------------------
; Function sys_entity_erase_enemy
; ---------------------------------
_sys_entity_erase_enemy::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:192: --num_enemies;
	ld	hl, #_num_enemies+0
	dec	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:193: TEntity *enemy=&array_structs_enemies[i];
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ex	de, hl
	ld	hl, #_array_structs_enemies
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:194: PutSprite(enemy->plane , player_Jump_right_pattern, 0,212,0 );
	ld	bc, #0x0011
	add	hl, bc
	ld	b, (hl)
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x1c
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	pop	de
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:196: memcpy(&array_structs_enemies[i],&array_structs_enemies[num_enemies],sizeof(TEntity));
	ld	bc, (_num_enemies)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc, #_array_structs_enemies
	add	hl, bc
	ld	bc, #0x0016
	ldir
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:197: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:198: void sys_entity_erase_all_enemies(char i){
;	---------------------------------
; Function sys_entity_erase_all_enemies
; ---------------------------------
_sys_entity_erase_all_enemies::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:199: --num_enemies;
	ld	hl, #_num_enemies+0
	dec	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:200: TEntity *enemy=&array_structs_enemies[i];
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ex	de, hl
	ld	hl, #_array_structs_enemies
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:201: PutSprite(enemy->plane , player_Jump_right_pattern, 0,212,0 );
	ld	bc, #0x0011
	add	hl, bc
	ld	b, (hl)
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x1c
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	pop	de
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:203: memcpy(&array_structs_enemies[i],&array_structs_enemies[num_enemies],sizeof(TEntity));
	ld	bc, (_num_enemies)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc, #_array_structs_enemies
	add	hl, bc
	ld	bc, #0x0016
	ldir
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:204: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:205: void sys_entity_erase_shot(char i){
;	---------------------------------
; Function sys_entity_erase_shot
; ---------------------------------
_sys_entity_erase_shot::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:206: --num_shots;
	ld	hl, #_num_shots+0
	dec	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:207: TEntity *shot=&array_structs_shots[i];
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ex	de, hl
	ld	hl, #_array_structs_shots
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:208: PutSprite(shot->plane, shot_pattern, 0,212,0 );
	ld	bc, #0x0011
	add	hl, bc
	ld	b, (hl)
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x40
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	pop	de
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:210: memcpy(&array_structs_shots[i],&array_structs_shots[num_shots],sizeof(TEntity));
	ld	bc, (_num_shots)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc, #_array_structs_shots
	add	hl, bc
	ld	bc, #0x0016
	ldir
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:211: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:212: void sys_entity_erase_object(char i){
;	---------------------------------
; Function sys_entity_erase_object
; ---------------------------------
_sys_entity_erase_object::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:213: --num_objects;
	ld	hl, #_num_objects+0
	dec	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:214: TEntity *object=&array_structs_objects[i];
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ex	de, hl
	ld	hl, #_array_structs_objects
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:215: PutSprite(object->plane, object_oxigen_pattern, 0,212,0 );
	ld	bc, #0x0011
	add	hl, bc
	ld	b, (hl)
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x38
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	pop	de
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:217: memcpy(&array_structs_objects[i],&array_structs_objects[num_objects],sizeof(TEntity));
	ld	bc, (_num_objects)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc, #_array_structs_objects
	add	hl, bc
	ld	bc, #0x0016
	ldir
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:218: }  
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:222: TEntity* sys_entity_get_array_structs_enemies(){
;	---------------------------------
; Function sys_entity_get_array_structs_enemies
; ---------------------------------
_sys_entity_get_array_structs_enemies::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:223: return array_structs_enemies;
	ld	hl, #_array_structs_enemies
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:224: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:225: TEntity* sys_entity_get_array_structs_shots(){
;	---------------------------------
; Function sys_entity_get_array_structs_shots
; ---------------------------------
_sys_entity_get_array_structs_shots::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:226: return array_structs_shots;
	ld	hl, #_array_structs_shots
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:227: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:228: TEntity* sys_entity_get_array_structs_objects(){
;	---------------------------------
; Function sys_entity_get_array_structs_objects
; ---------------------------------
_sys_entity_get_array_structs_objects::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:229: return array_structs_objects;
	ld	hl, #_array_structs_objects
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:230: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:233: char sys_entity_get_num_enemies(){
;	---------------------------------
; Function sys_entity_get_num_enemies
; ---------------------------------
_sys_entity_get_num_enemies::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:234: return num_enemies;
	ld	iy, #_num_enemies
	ld	l, 0 (iy)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:235: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:236: char sys_entity_get_num_shots(){
;	---------------------------------
; Function sys_entity_get_num_shots
; ---------------------------------
_sys_entity_get_num_shots::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:237: return num_shots;
	ld	iy, #_num_shots
	ld	l, 0 (iy)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:238: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:239: char sys_entity_get_num_objects(){
;	---------------------------------
; Function sys_entity_get_num_objects
; ---------------------------------
_sys_entity_get_num_objects::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:240: return num_objects;
	ld	iy, #_num_objects
	ld	l, 0 (iy)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:241: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:244: char sys_entity_get_max_enemies(){
;	---------------------------------
; Function sys_entity_get_max_enemies
; ---------------------------------
_sys_entity_get_max_enemies::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:245: return MAX_enemies;
	ld	l, #0x0a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:246: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:247: char sys_entity_get_max_shot(){
;	---------------------------------
; Function sys_entity_get_max_shot
; ---------------------------------
_sys_entity_get_max_shot::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:248: return MAX_enemies;
	ld	l, #0x0a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:249: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:250: char sys_entity_get_max_objects(){
;	---------------------------------
; Function sys_entity_get_max_objects
; ---------------------------------
_sys_entity_get_max_objects::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:251: return MAX_enemies;
	ld	l, #0x0a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:252: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/anim.c:9: void sys_anim_init(){}
;	---------------------------------
; Function sys_anim_init
; ---------------------------------
_sys_anim_init::
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/anim.c:10: void sys_anim_update(TEntity *entity){
;	---------------------------------
; Function sys_anim_update
; ---------------------------------
_sys_anim_update::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/anim.c:11: if (entity->andando==0){
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl, #0x000d
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/anim.c:12: entity->andando=1;
	ld	(hl), #0x01
	ret
00102$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/anim.c:14: entity->andando=0;
	ld	(hl), #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/anim.c:16: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:23: char* getBuffer(){
;	---------------------------------
; Function getBuffer
; ---------------------------------
_getBuffer::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:24: return &buffer[0];
	ld	hl, #_buffer
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:25: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:27: void load_file_into_buffer_with_structure(char *filename){
;	---------------------------------
; Function load_file_into_buffer_with_structure
; ---------------------------------
_load_file_into_buffer_with_structure::
	call	___sdcc_enter_ix
	ld	hl, #-37
	add	hl, sp
	ld	sp, hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:30: enter_name_and_extension_in_structure(&struct_fcb, filename);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	push	bc
	call	_enter_name_and_extension_in_structure
	pop	af
	pop	af
	pop	de
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:31: fcb_open(&struct_fcb);
	ld	c, e
	ld	b, d
	push	de
	push	bc
	call	_fcb_open
	pop	af
	pop	de
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:33: fcb_read( &struct_fcb, &buffer[0], 8 ); 
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0008
	push	hl
	ld	hl, #_buffer
	push	hl
	push	bc
	call	_fcb_read
	pop	af
	pop	af
	pop	af
	pop	de
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:35: fcb_read( &struct_fcb, &buffer[0], BUFFER_SIZE );  
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x6a06
	push	hl
	ld	hl, #_buffer
	push	hl
	push	bc
	call	_fcb_read
	pop	af
	pop	af
	pop	af
	call	_fcb_close
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:37: }
	ld	sp,ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:39: void load_file_into_buffer(char *filename) {
;	---------------------------------
; Function load_file_into_buffer
; ---------------------------------
_load_file_into_buffer::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:42: file=Open(filename, O_RDONLY);
	ld	hl, #0x0000
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_Open
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:45: Read(file, buffer, 7);	
	push	bc
	ld	hl, #0x0007
	push	hl
	ld	hl, #_buffer
	push	hl
	push	bc
	call	_Read
	pop	af
	pop	af
	pop	af
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:47: Read(file, buffer, BUFFER_SIZE);
	push	bc
	ld	hl, #0x6a06
	push	hl
	ld	hl, #_buffer
	push	hl
	push	bc
	call	_Read
	pop	af
	pop	af
	pop	af
	call	_Close
	pop	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:50: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:55: void enter_name_and_extension_in_structure(FCB *p_fcb, const char *p_name)  // Routine servant à vérifier le format du nom de fichier
;	---------------------------------
; Function enter_name_and_extension_in_structure
; ---------------------------------
_enter_name_and_extension_in_structure::
	call	___sdcc_enter_ix
	push	af
	push	af
	dec	sp
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:58: memset( p_fcb, 0, sizeof(FCB) );
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	b, #0x25
00178$:
	ld	(hl), #0x00
	inc	hl
	djnz	00178$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:59: for( i = 0; i < 11; i++ ) {
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	hl, #0x0001
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	c, #0x00
00106$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:60: p_fcb->name[i] = ' ';
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	b, #0x00
	add	hl, bc
	ld	(hl), #0x20
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:59: for( i = 0; i < 11; i++ ) {
	inc	c
	ld	a, c
	sub	a, #0x0b
	jr	C,00106$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:62: for( i = 0; (i < 8) && (p_name[i] != 0) && (p_name[i] != '.'); i++ ) {
	xor	a, a
	ld	-2 (ix), a
00111$:
	ld	a, 6 (ix)
	add	a, -2 (ix)
	ld	l, a
	ld	a, 7 (ix)
	adc	a, #0x00
	ld	h, a
	ld	a, -2 (ix)
	inc	a
	ld	-1 (ix), a
	ld	c, (hl)
	ld	a, c
	sub	a, #0x2e
	ld	a, #0x01
	jr	Z,00181$
	xor	a, a
00181$:
	ld	l, a
	ld	a, -2 (ix)
	sub	a, #0x08
	jr	NC,00102$
	ld	a, c
	or	a, a
	jr	Z,00102$
	bit	0, l
	jr	NZ,00102$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:63: p_fcb->name[i] =  p_name[i];
	ld	a, -4 (ix)
	add	a, -2 (ix)
	ld	l, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), c
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:62: for( i = 0; (i < 8) && (p_name[i] != 0) && (p_name[i] != '.'); i++ ) {
	ld	a, -1 (ix)
	ld	-2 (ix), a
	jr	00111$
00102$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:65: if( p_name[i] == '.' ) {
	ld	a, l
	or	a, a
	jr	Z,00118$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:66: i++;
	ld	a, -1 (ix)
	ld	-5 (ix), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:67: for( j = 0; (j < 3) && (p_name[i + j] != 0) && (p_name[i + j] != '.'); j++ ) {
	ld	hl, #0x0009
	add	hl, de
	ex	de, hl
	ld	c, #0x00
00116$:
	ld	a, c
	sub	a, #0x03
	jr	NC,00118$
	ld	l, -5 (ix)
	ld	h, #0x00
	ld	-4 (ix), c
	xor	a, a
	ld	-3 (ix), a
	ld	a, l
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, h
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, 6 (ix)
	add	a, -2 (ix)
	ld	l, a
	ld	a, 7 (ix)
	adc	a, -1 (ix)
	ld	h, a
	ld	b, (hl)
	ld	a, b
	or	a, a
	jr	Z,00118$
	ld	a, b
	sub	a, #0x2e
	jr	Z,00118$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:68: p_fcb->ext[j] =  p_name[i + j] ;
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	(hl), b
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:67: for( j = 0; (j < 3) && (p_name[i + j] != 0) && (p_name[i + j] != '.'); j++ ) {
	inc	c
	jr	00116$
00118$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/files.c:71: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:22: void sys_collider_init(){
;	---------------------------------
; Function sys_collider_init
; ---------------------------------
_sys_collider_init::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:23: bufferDir=getBuffer();
	call	_getBuffer
	ld	(_bufferDir), hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:24: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:26: int sys_collider_get_column_entity(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_column_entity
; ---------------------------------
_sys_collider_get_column_entity::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:29: return (entity->x/8);
	pop	bc
	pop	hl
	push	hl
	push	bc
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z,00103$
	ld	hl, #0x0007
	add	hl, bc
00103$:
	ld	b, #0x03
00109$:
	sra	h
	rr	l
	djnz	00109$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:30: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:31: int sys_collider_get_file_entity(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_file_entity
; ---------------------------------
_sys_collider_get_file_entity::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:34: return (entity->y/8);
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	de, #0x0004
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z,00103$
	ld	hl, #0x0007
	add	hl, bc
00103$:
	ld	b, #0x03
00109$:
	sra	h
	rr	l
	djnz	00109$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:35: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:36: int sys_collider_get_tile_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_array
; ---------------------------------
_sys_collider_get_tile_array::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:38: int tile_pie=buffer[((sys_collider_get_file_entity(entity)+1)*32)+(sys_collider_get_column_entity(entity))];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:39: return tile_pie;
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:40: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:41: int sys_collider_get_tile_down_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_down_array
; ---------------------------------
_sys_collider_get_tile_down_array::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:43: int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+2)*32)+(sys_collider_get_column_entity(entity))];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:44: return tile_abajo; 
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:45: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:46: int sys_collider_get_tile_right_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_right_array
; ---------------------------------
_sys_collider_get_tile_right_array::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:48: int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+1)*32)+(sys_collider_get_column_entity(entity)-1)];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	dec	hl
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:49: return tile_abajo; 
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:50: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:51: int sys_collider_get_tile_left_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_left_array
; ---------------------------------
_sys_collider_get_tile_left_array::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:53: int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+2)*32)+(sys_collider_get_column_entity(entity)+2)];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	inc	hl
	inc	hl
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:54: return tile_abajo; 
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:55: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:22: void sys_physics_update(TEntity *entity){
;	---------------------------------
; Function sys_physics_update
; ---------------------------------
_sys_physics_update::
	call	___sdcc_enter_ix
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:23: if (entity->type==entity_type_player){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	ld	e, a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:24: entity->old_x=entity->x;
	ld	hl, #0x0002
	add	hl, bc
	ex	(sp), hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:23: if (entity->type==entity_type_player){
	ld	a, e
	dec	a
	jp	NZ,00120$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:24: entity->old_x=entity->x;
	ld	hl, #0x0006
	add	hl, bc
	ex	de, hl
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(de), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:25: entity->old_y=entity->y;
	ld	hl, #0x0007
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:29: entity->y+=entity->vy;
	ld	hl, #0x0004
	add	hl, bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:25: entity->old_y=entity->y;
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, (hl)
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:26: sys_physics_check_keyboard(entity);
	push	bc
	push	bc
	call	_sys_physics_check_keyboard
	pop	af
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:28: if(entity->jump==1){
	ld	hl, #0x000e
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	e, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:29: entity->y+=entity->vy;
	ld	hl, #0x000b
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:28: if(entity->jump==1){
	dec	e
	jr	NZ,00104$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:29: entity->y+=entity->vy;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:30: if(entity->old_y-16>=entity->y){
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	l, (hl)
	ld	h, #0x00
	ld	a, l
	add	a, #0xf0
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00173$
	xor	a, #0x80
00173$:
	jp	M, 00104$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:31: entity->vy*=-1;
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	neg
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:32: entity->jump=0;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), #0x00
00104$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:36: if(entity->x<=0) entity->x=0;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00174$
	xor	a, #0x80
00174$:
	jp	M, 00106$
	pop	hl
	push	hl
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00106$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:38: if(entity->y>180) entity->y=212-16;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0xb4
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00175$
	xor	a, #0x80
00175$:
	jp	P, 00108$
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), #0xc4
	inc	hl
	ld	(hl), #0x00
00108$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:41: if (sys_collider_get_tile_down_array(entity)<tile_stairs1 || sys_collider_get_tile_down_array(entity)>=255){
	push	bc
	push	bc
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	bc
	ld	de, #0x80c0
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jr	C,00109$
	push	bc
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	de, #0x80ff
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jr	C,00122$
00109$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:43: entity->y+=entity->vy;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, bc
	ex	de, hl
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00122$
00120$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:48: }else if(entity->type==entity_type_shot){
	ld	a, e
	sub	a, #0x10
	jr	NZ,00122$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:49: if (entity->dir==3)entity->x+=entity->vx;
	ld	l, c
	ld	h, b
	ld	de, #0x000c
	add	hl, de
	ld	l, (hl)
	ld	a, c
	add	a, #0x0a
	ld	c, a
	jr	NC,00178$
	inc	b
00178$:
	ld	a, l
	sub	a, #0x03
	jr	NZ,00115$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, (bc)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00122$
00115$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:50: else if (entity->dir==7)entity->x-=entity->vx;
	ld	a, l
	sub	a, #0x07
	jr	NZ,00122$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, (bc)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
	ld	b, a
	pop	hl
	push	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
00122$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:53: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:57: void sys_physics_check_keyboard(TEntity *entity){
;	---------------------------------
; Function sys_physics_check_keyboard
; ---------------------------------
_sys_physics_check_keyboard::
	call	___sdcc_enter_ix
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:60: char joy = JoystickRead(0);
	xor	a, a
	push	af
	inc	sp
	call	_JoystickRead
	inc	sp
	ld	-11 (ix), l
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:67: entity->dir=1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	hl, #0x000c
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:68: entity->y-=entity->vy;
	ld	hl, #0x0004
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	hl, #0x000b
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:61: if(joy==1){
	ld	a, -11 (ix)
	dec	a
	jp	NZ,00107$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:63: entity_jump(entity);
	push	bc
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_entity_jump
	pop	af
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	pop	bc
	ld	a, l
	sub	a, #0xc0
	or	a, h
	jr	Z,00101$
	push	bc
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	pop	bc
	ld	a, l
	sub	a, #0xc1
	or	a, h
	jr	Z,00101$
	push	bc
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	bc
	ld	a, l
	sub	a, #0xc0
	or	a, h
	jr	Z,00101$
	push	bc
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	bc
	ld	a, l
	sub	a, #0xc1
	or	a, h
	jr	NZ,00107$
00101$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:67: entity->dir=1;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x01
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:68: entity->y-=entity->vy;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:69: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
00107$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:75: entity->x+=entity->vx;
	ld	hl, #0x0002
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	hl, #0x000a
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:72: if(joy==2){
	ld	a, -11 (ix)
	sub	a, #0x02
	jr	NZ,00109$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:73: entity->dir=3;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x03
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:74: entity_jump(entity); 
	push	bc
	push	bc
	call	_entity_jump
	pop	af
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:75: entity->x+=entity->vx;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00109$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:77: if(joy==3){
	ld	a, -11 (ix)
	sub	a, #0x03
	jr	NZ,00111$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:78: entity->dir=3;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x03
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:80: entity->x+=entity->vx;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:81: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
00111$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:85: if(joy==5){
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	NZ,00116$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:86: if(sys_collider_get_tile_down_array(entity)==tile_stairs1 ||sys_collider_get_tile_down_array(entity)==tile_stairs2 ){
	push	bc
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	bc
	ld	a, l
	sub	a, #0xc0
	or	a, h
	jr	Z,00112$
	push	bc
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	bc
	ld	a, l
	sub	a, #0xc1
	or	a, h
	jr	NZ,00116$
00112$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:87: entity->dir=5;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x05
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:88: entity->y+=entity->vy;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:89: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
00116$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:94: if(joy==7) {
	ld	a, -11 (ix)
	sub	a, #0x07
	jr	NZ,00118$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:95: entity->dir=7;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x07
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:96: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:97: entity->x-=entity->vx; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00118$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:99: if(joy==8){
	ld	a, -11 (ix)
	sub	a, #0x08
	jr	NZ,00120$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:100: entity->dir=7;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x07
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:101: entity_jump(entity);
	push	bc
	call	_entity_jump
	pop	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:102: entity->x-=entity->vx; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00120$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:106: char trigger = TriggerRead(0);
	xor	a, a
	push	af
	inc	sp
	call	_TriggerRead
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:107: if (trigger!=0) {
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:114: }
	ld	sp,ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:117: void entity_jump(TEntity *entity){
;	---------------------------------
; Function entity_jump
; ---------------------------------
_entity_jump::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:119: if (entity->jump==0 && sys_collider_get_tile_down_array(entity)>=tile_floor_tile){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	hl, #0x000e
	add	hl, bc
	ex	de, hl
	ld	a, (de)
	or	a, a
	jr	NZ,00104$
	push	bc
	push	de
	push	bc
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	de
	pop	bc
	ld	a, l
	sub	a, #0xe0
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00104$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:121: entity->jump=1;  
	ld	a, #0x01
	ld	(de), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:123: entity->vy*=-1;
	ld	hl, #0x000b
	add	hl, bc
	ld	a, (hl)
	neg
	ld	(hl), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:124: entity->old_y=entity->y;
	ld	hl, #0x0007
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x0004
	add	hl, bc
	ld	a, (hl)
	ld	(de), a
00104$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:126: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:17: void sys_render_init(){
;	---------------------------------
; Function sys_render_init
; ---------------------------------
_sys_render_init::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:19: SetColors(15,0,4);
	ld	a, #0x04
	push	af
	inc	sp
	xor	a, a
	ld	d,a
	ld	e,#0x0f
	push	de
	call	_SetColors
	pop	af
	inc	sp
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:20: Screen(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_Screen
	inc	sp
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:22: SpriteReset(); 
	call	_SpriteReset
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:24: Sprite16(); 
	call	_Sprite16
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:26: SpriteSmall(); 
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:27: }
	jp	_SpriteSmall
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:30: void sys_render_update(TEntity *entity){
;	---------------------------------
; Function sys_render_update
; ---------------------------------
_sys_render_update::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:31: if (entity->type==entity_type_player)sys_render_update_player(entity);
	pop	de
	pop	bc
	push	bc
	push	de
	ld	a, (bc)
	dec	a
	jr	NZ,00102$
	push	bc
	push	bc
	call	_sys_render_update_player
	pop	af
	pop	bc
00102$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:32: if (entity->type==entity_type_enemy1)sys_render_update_enemy(entity);
	ld	a, (bc)
	sub	a, #0x02
	jr	NZ,00104$
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_sys_render_update_enemy
	pop	af
	pop	bc
00104$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:33: if (entity->type==entity_type_shot)sys_render_update_shot(entity);
	ld	a, (bc)
	sub	a, #0x10
	jr	NZ,00106$
	push	bc
	push	bc
	call	_sys_render_update_shot
	pop	af
	pop	bc
00106$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:34: if (entity->type==entity_type_object_oxigen)sys_render_update_object(entity);
	ld	a, (bc)
	sub	a, #0x16
	ret	NZ
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_sys_render_update_object
	pop	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:37: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:38: void sys_render_update_player(TEntity *player){
;	---------------------------------
; Function sys_render_update_player
; ---------------------------------
_sys_render_update_player::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	dec	sp
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:47: if (player->dir==1 || player->dir==5){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:48: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	ld	hl, #0x0004
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	hl, #0x0011
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:47: if (player->dir==1 || player->dir==5){
	ld	a, -7 (ix)
	dec	a
	jr	Z,00118$
	ld	a, -7 (ix)
	sub	a, #0x05
	jr	NZ,00119$
00118$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:48: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	ld	a, (de)
	ld	e, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	d, c
	push	de
	ld	a, #0x10
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00122$
00119$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:50: if (player->jump==1){
	ld	hl, #0x000e
	add	hl, bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:53: if(player->andando ==0 ){
	ld	a, c
	add	a, #0x0d
	ld	-2 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-1 (ix), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:49: }else if (player->dir==3){
	ld	a, -7 (ix)
	sub	a, #0x03
	jr	NZ,00116$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:50: if (player->jump==1){
	ld	c, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:48: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	b, (hl)
	ld	a, (de)
	ld	e, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	d, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:50: if (player->jump==1){
	dec	c
	jr	NZ,00105$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:51: PutSprite( player->plane, player_Jump_right_pattern, player->x,player->y,0 );
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	b, e
	ld	c,#0x1c
	push	bc
	push	de
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00122$
00105$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:53: if(player->andando ==0 ){
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:54: PutSprite( player->plane, player_right_pattern, player->x,player->y,0 );
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	b, e
	ld	c,#0x08
	push	bc
	push	de
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00122$
00102$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:56: PutSprite( player->plane, player_right_walking_pattern, player->x,player->y,  0);
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	b, e
	ld	c,#0x0c
	push	bc
	push	de
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00122$
00116$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:60: }else if(player->dir==7){
	ld	a, -7 (ix)
	sub	a, #0x07
	jr	NZ,00122$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:61: if (player->jump==1){
	ld	c, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:48: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	b, (hl)
	ld	a, (de)
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:61: if (player->jump==1){
	dec	c
	jr	NZ,00111$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:62: PutSprite( player->plane, player_jump_left_pattern, player->x,player->y,0 );
	xor	a, a
	push	af
	inc	sp
	ld	c, d
	push	bc
	ld	d,#0x18
	push	de
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00122$
00111$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:64: if(player->andando ==0){
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ,00108$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:65: PutSprite( player->plane, player_left_pattern, player->x,player->y, 0 );
	xor	a, a
	push	af
	inc	sp
	ld	c, d
	push	bc
	xor	a, a
	ld	d,a
	push	de
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00122$
00108$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:67: PutSprite( player->plane, player_left_walking_pattern, player->x,player->y,  0 );
	xor	a, a
	push	af
	inc	sp
	ld	c, d
	push	bc
	ld	d,#0x04
	push	de
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
00122$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:71: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:75: void sys_render_update_enemy(TEntity *enemy){   
;	---------------------------------
; Function sys_render_update_enemy
; ---------------------------------
_sys_render_update_enemy::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:77: sys_anim_update(enemy);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_anim_update
	pop	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:79: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	l, e
	ld	h, d
	ld	bc, #0x000c
	add	hl, bc
	ld	c, (hl)
	ld	hl, #0x0002
	add	hl, de
	ex	(sp), hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:80: if (enemy->andando){
	ld	hl, #0x000d
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:81: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	hl, #0x0004
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ex	de,hl
	ld	de, #0x0011
	add	hl, de
	ld	b, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:79: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
	ld	a, c
	sub	a, #0x03
	jr	NZ,00113$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
	jr	NC,00113$
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00161$
	xor	a, #0x80
00161$:
	jp	P, 00113$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:80: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:81: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	d, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:80: if (enemy->andando){
	or	a, a
	jr	Z,00102$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:81: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d, e
	ld	e,#0x20
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00117$
00102$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:83: PutSprite(enemy->plane,enemy1_right_walking_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d, e
	ld	e,#0x24
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00117$
00113$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:86: }else if (enemy->dir==7 && enemy->x<256 && enemy->x>0){
	ld	a, c
	sub	a, #0x07
	jr	NZ,00108$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
	jr	NC,00108$
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00164$
	xor	a, #0x80
00164$:
	jp	P, 00108$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:87: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:88: PutSprite(enemy->plane,enemy1_left_pattern,enemy->x,enemy->y,0);
	ld	d, e
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:81: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	h, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:87: if (enemy->andando){
	or	a, a
	jr	Z,00105$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:88: PutSprite(enemy->plane,enemy1_left_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	ld	l, d
	push	hl
	ld	a, #0x28
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00117$
00105$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:90: PutSprite(enemy->plane,enemy1_left_walking_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	ld	l, d
	push	hl
	ld	a, #0x2c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00117$
00108$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:93: PutSprite(enemy->plane,enemy1_left_walking_pattern,0,212,0);
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x2c
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
00117$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:95: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:97: void sys_render_update_shot(TEntity *shot){
;	---------------------------------
; Function sys_render_update_shot
; ---------------------------------
_sys_render_update_shot::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:98: if (shot->plane!=0) PutSprite(shot->plane,shot_pattern,shot->x,shot->y,0);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	de, #0x0011
	add	hl, de
	ld	e, (hl)
	ld	a, e
	or	a, a
	jr	Z,00103$
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	d,#0x40
	push	de
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
00103$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:99: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:101: void sys_render_update_object(TEntity *object){
;	---------------------------------
; Function sys_render_update_object
; ---------------------------------
_sys_render_update_object::
	call	___sdcc_enter_ix
	dec	sp
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:103: if (object->x>0 && object->x<256 ){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00116$
	xor	a, #0x80
00116$:
	jp	P, 00104$
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
	jr	NC,00104$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:104: PutSprite(object->plane,object_oxigen_pattern,object->x,object->y,0);
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, c
	ld	h, b
	ld	bc, #0x0011
	add	hl, bc
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	d, -1 (ix)
	push	de
	ld	a, #0x38
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
00104$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:108: }
	inc	sp
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:16: void sys_ai_init(){
;	---------------------------------
; Function sys_ai_init
; ---------------------------------
_sys_ai_init::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:17: sys_ai_contador=0;
	ld	hl, #0x0000
	ld	(_sys_ai_contador), hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:18: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:21: void sys_ai_update(TEntity *entity){
;	---------------------------------
; Function sys_ai_update
; ---------------------------------
_sys_ai_update::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:22: if (entity->type==entity_type_enemy1)sys_ai_update_enemy_behavior_1(entity);
	pop	de
	pop	bc
	push	bc
	push	de
	ld	a, (bc)
	sub	a, #0x02
	ret	NZ
	push	bc
	call	_sys_ai_update_enemy_behavior_1
	pop	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:23: if (entity->type==entity_type_boss){
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:26: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:28: void sys_ai_update_enemy_behavior_1(TEntity *enemy){
;	---------------------------------
; Function sys_ai_update_enemy_behavior_1
; ---------------------------------
_sys_ai_update_enemy_behavior_1::
	call	___sdcc_enter_ix
	push	af
	push	af
	dec	sp
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:40: if(enemy->dir==7){
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	hl, #0x000c
	add	hl, de
	ex	(sp), hl
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-3 (ix), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:41: enemy->x-=enemy->vx;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	hl, #0x000a
	add	hl, de
	ex	de, hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:46: if(enemy->x<=8) enemy->dir=3;
	ld	a, (bc)
	ld	-2 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-1 (ix), a
	dec	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:40: if(enemy->dir==7){
	ld	a, -3 (ix)
	sub	a, #0x07
	jr	NZ,00104$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:41: enemy->x-=enemy->vx;
	ld	a, (de)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, -2 (ix)
	sub	a, e
	ld	e, a
	ld	a, -1 (ix)
	sbc	a, d
	ld	d, a
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00105$
00104$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:42: }else if(enemy->dir==3){
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	NZ,00105$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:43: enemy->x+=enemy->vx;
	ld	a, (de)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, e
	add	a, -2 (ix)
	ld	e, a
	ld	a, d
	adc	a, -1 (ix)
	ld	d, a
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
00105$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:46: if(enemy->x<=8) enemy->dir=3;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0x08
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00136$
	xor	a, #0x80
00136$:
	jp	M, 00107$
	pop	hl
	push	hl
	ld	(hl), #0x03
00107$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:47: if(enemy->x>=256-16) enemy->dir=7;
	ld	l, c
	ld	h, b
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, #0xf0
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00110$
	pop	hl
	push	hl
	ld	(hl), #0x07
00110$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:49: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:51: void sys_ai_update_enemy_boss1(TEntity *enemy){
;	---------------------------------
; Function sys_ai_update_enemy_boss1
; ---------------------------------
_sys_ai_update_enemy_boss1::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:52: ++sys_ai_contador;
	ld	hl, (_sys_ai_contador)
	inc	hl
	ld	(_sys_ai_contador), hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:53: enemy->old_x=enemy->x;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	hl, #0x0006
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0002
	add	hl, bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(de), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:54: enemy->old_y=enemy->y;
	ld	hl, #0x0007
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0004
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	ld	(de), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:55: char aleatorio=rand()%(6-3)+3;
	push	bc
	call	_rand
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:56: if (sys_ai_contador<=3)enemy->x-=enemy->vx;
	ld	a, #0x03
	ld	iy, #_sys_ai_contador
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00125$
	xor	a, #0x80
00125$:
	rlca
	and	a,#0x01
	ld	e, a
	ld	hl, #0x000a
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	bit	0, e
	jr	NZ,00104$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00105$
00104$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:57: else if (sys_ai_contador>3)enemy->x+=enemy->vx;
	ld	a, e
	or	a, a
	jr	Z,00105$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00105$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:60: enemy->vy=-enemy->vy ; 
	ld	hl, #0x000b
	add	hl, bc
	ex	de, hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:58: if (sys_ai_contador==6) {
	ld	iy, #_sys_ai_contador
	ld	a, 0 (iy)
	sub	a, #0x06
	or	a, 1 (iy)
	jr	NZ,00107$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:60: enemy->vy=-enemy->vy ; 
	ld	a, (de)
	neg
	ld	(de), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:61: sys_ai_contador=0;
	ld	hl, #0x0000
	ld	(_sys_ai_contador), hl
00107$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:67: enemy->y+=enemy->vy ;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (de)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, bc
	ex	de, hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/ai.c:69: }
	ld	sp, ix
	pop	ix
	ret
;src/man/game.c:57: void man_game_init(){
;	---------------------------------
; Function man_game_init
; ---------------------------------
_man_game_init::
;src/man/game.c:59: sys_render_init();
	call	_sys_render_init
;src/man/game.c:62: load_file_into_buffer_with_structure("LOADER.S05");
	ld	hl, #___str_1
	push	hl
	call	_load_file_into_buffer_with_structure
;src/man/game.c:64: HMMC(&buffer[0], 0,0,256,212 ); 
	ld	hl, #0x00d4
	ex	(sp),hl
	ld	hl, #0x0100
	push	hl
	ld	h, #0x00
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl, #_buffer
	push	hl
	call	_HMMC
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;src/man/game.c:67: load_file_into_buffer("tileset.s05");
	ld	hl, #___str_2
	push	hl
	call	_load_file_into_buffer
;src/man/game.c:71: HMMC(&buffer[0], 0,256,256,212); 
	ld	hl, #0x00d4
	ex	(sp),hl
	ld	hl, #0x0100
	push	hl
	ld	l, #0x00
	push	hl
	ld	h, #0x00
	push	hl
	ld	hl, #_buffer
	push	hl
	call	_HMMC
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;src/man/game.c:73: load_file_into_buffer("sprites.bin");
	ld	hl, #___str_3
	push	hl
	call	_load_file_into_buffer
	pop	af
;src/man/game.c:75: man_game_copiarSpritesVRAM();
	call	_man_game_copiarSpritesVRAM
;src/man/game.c:81: InitPSG();
	call	_InitPSG
;src/man/game.c:82: man_game_cargar_buffer_musica();
	call	_man_game_cargar_buffer_musica
;src/man/game.c:84: PT3Init (songBuffer+99, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #(_songBuffer + 0x0063)
	push	hl
	call	_PT3Init
;src/man/game.c:86: SetRealTimer(0);	
	inc	sp
	ld	hl,#0x0000
	ex	(sp),hl
	call	_SetRealTimer
	pop	af
;src/man/game.c:87: KeySound(0);
	xor	a, a
	push	af
	inc	sp
	call	_KeySound
	inc	sp
;src/man/game.c:89: actual_world=0;
	ld	hl,#_actual_world + 0
	ld	(hl), #0x00
;src/man/game.c:93: world_change=1;
	ld	hl,#_world_change + 0
	ld	(hl), #0x01
;src/man/game.c:95: player=sys_entity_create_player();
	call	_sys_entity_create_player
	ld	(_player), hl
;src/man/game.c:96: PutText(0,0, "Eres un vigilante y como siempre estas durmiendo te han robado.",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_4
	push	hl
	ld	hl, #0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:97: PutText(0,16, "Atrapa a todos los ladr0nes y recoge las monedas que han ido perdiendo.",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_5
	push	hl
	ld	hl, #0x0010
	push	hl
	ld	l, #0x00
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:98: PutText(20,180, "Press any key to continue",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_6
	push	hl
	ld	hl, #0x00b4
	push	hl
	ld	l, #0x14
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:99: WaitKey();
;src/man/game.c:100: }
	jp	_WaitKey
___str_1:
	.ascii "LOADER.S05"
	.db 0x00
___str_2:
	.ascii "tileset.s05"
	.db 0x00
___str_3:
	.ascii "sprites.bin"
	.db 0x00
___str_4:
	.ascii "Eres un vigilante y como siempre estas durmiendo te han roba"
	.ascii "do."
	.db 0x00
___str_5:
	.ascii "Atrapa a todos los ladr0nes y recoge las monedas que han ido"
	.ascii " perdiendo."
	.db 0x00
___str_6:
	.ascii "Press any key to continue"
	.db 0x00
;src/man/game.c:102: void man_game_play(){
;	---------------------------------
; Function man_game_play
; ---------------------------------
_man_game_play::
;src/man/game.c:103: do{
00102$:
;src/man/game.c:107: sys_physics_update(player);
	ld	hl, (_player)
	push	hl
	call	_sys_physics_update
	pop	af
;src/man/game.c:108: sys_render_update(player);
	ld	hl, (_player)
	push	hl
	call	_sys_render_update
	pop	af
;src/man/game.c:110: for (char i=0;i<sys_entity_get_num_enemies();++i){
	ld	c, #0x00
00106$:
	push	bc
	call	_sys_entity_get_num_enemies
	pop	bc
	ld	a, c
	sub	a, l
	jr	NC,00101$
;src/man/game.c:111: TEntity *enemy=&array_enemies[i];
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	de, (_array_enemies)
	add	hl, de
;src/man/game.c:113: sys_ai_update(enemy);
	push	hl
	push	bc
	push	hl
	call	_sys_ai_update
	pop	af
	pop	bc
	pop	hl
;src/man/game.c:114: sys_render_update(enemy);
	push	bc
	push	hl
	call	_sys_render_update
	pop	af
	pop	bc
;src/man/game.c:110: for (char i=0;i<sys_entity_get_num_enemies();++i){
	inc	c
	jr	00106$
00101$:
;src/man/game.c:118: man_game_update();
	call	_man_game_update
;src/man/game.c:122: wait();
	call	_wait
;src/man/game.c:124: }while(1);
;src/man/game.c:125: }
	jr	00102$
;src/man/game.c:127: void man_game_update(){
;	---------------------------------
; Function man_game_update
; ---------------------------------
_man_game_update::
;src/man/game.c:128: if (world_change==1){
	ld	iy, #_world_change
	ld	a, 0 (iy)
	dec	a
	jp	NZ,_man_game_check_change_world
;src/man/game.c:129: Cls();
	call	_Cls
;src/man/game.c:130: if (actual_world==0){
	ld	a,(#_actual_world + 0)
	or	a, a
	jp	NZ, 00104$
;src/man/game.c:132: load_file_into_buffer_with_structure("world0.bin");
	ld	hl, #___str_7
	push	hl
	call	_load_file_into_buffer_with_structure
	pop	af
;src/man/game.c:135: player->x=8*2;
	ld	hl, (_player)
	inc	hl
	inc	hl
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:136: player->y=8*19;
	ld	hl, (_player)
	ld	bc, #0x0004
	add	hl, bc
	ld	(hl), #0x98
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:138: TEntity *enemy1=sys_entity_create_enemy1();
	call	_sys_entity_create_enemy1
;src/man/game.c:139: TEntity *enemy2=sys_entity_create_enemy1();
	call	_sys_entity_create_enemy1
	ld	c, l
	ld	b, h
;src/man/game.c:140: enemy2->plane=enemy1_plane+sys_entity_get_num_enemies();
	ld	hl, #0x0011
	add	hl, bc
	push	hl
	push	bc
	call	_sys_entity_get_num_enemies
	ld	a, l
	pop	bc
	pop	hl
	add	a, #0x05
	ld	(hl), a
;src/man/game.c:141: enemy2->x=4*8;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl), #0x20
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:142: enemy2->y=9*8;
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x48
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:143: enemy2->dir=7;
	ld	hl, #0x000c
	add	hl, bc
	ld	(hl), #0x07
;src/man/game.c:144: TEntity *enemy3=sys_entity_create_enemy1();
	call	_sys_entity_create_enemy1
	ld	c, l
	ld	b, h
;src/man/game.c:145: enemy3->plane=enemy1_plane+sys_entity_get_num_enemies();
	ld	hl, #0x0011
	add	hl, bc
	push	hl
	push	bc
	call	_sys_entity_get_num_enemies
	ld	a, l
	pop	bc
	pop	hl
	add	a, #0x05
	ld	(hl), a
;src/man/game.c:146: enemy3->x=6*8;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:147: enemy3->y=15*8;
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x78
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:148: TEntity *enemy4=sys_entity_create_enemy1();
	call	_sys_entity_create_enemy1
	ld	c, l
	ld	b, h
;src/man/game.c:149: enemy4->plane=enemy1_plane+sys_entity_get_num_enemies();
	ld	hl, #0x0011
	add	hl, bc
	push	hl
	push	bc
	call	_sys_entity_get_num_enemies
	ld	a, l
	pop	bc
	pop	hl
	add	a, #0x05
	ld	(hl), a
;src/man/game.c:150: enemy4->x=20*8;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	(hl), #0xa0
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:151: enemy4->y=20*8;
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0xa0
	inc	hl
	ld	(hl), #0x00
	jr	00105$
00104$:
;src/man/game.c:155: }else if (actual_world==1){
	ld	a,(#_actual_world + 0)
	dec	a
	jr	NZ,00105$
;src/man/game.c:156: load_file_into_buffer_with_structure("world1.bin");
	ld	hl, #___str_8
	push	hl
	call	_load_file_into_buffer_with_structure
	pop	af
;src/man/game.c:157: player->x=8*2;
	ld	hl, (_player)
	inc	hl
	inc	hl
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:158: player->y=8*20;
	ld	hl, (_player)
	ld	bc, #0x0004
	add	hl, bc
	ld	(hl), #0xa0
	inc	hl
	ld	(hl), #0x00
00105$:
;src/man/game.c:160: man_game_pintarMapa();
	call	_man_game_pintarMapa
;src/man/game.c:161: array_enemies=sys_entity_get_array_structs_enemies();
	call	_sys_entity_get_array_structs_enemies
	ld	(_array_enemies), hl
;src/man/game.c:162: pintar_HUD();
	call	_pintar_HUD
;src/man/game.c:163: world_change=0;
	ld	iy, #_world_change
	ld	0 (iy), #0x00
;src/man/game.c:165: man_game_check_change_world();
;src/man/game.c:166: }
	jp	_man_game_check_change_world
___str_7:
	.ascii "world0.bin"
	.db 0x00
___str_8:
	.ascii "world1.bin"
	.db 0x00
;src/man/game.c:167: void man_game_check_change_world(){
;	---------------------------------
; Function man_game_check_change_world
; ---------------------------------
_man_game_check_change_world::
;src/man/game.c:168: if (sys_collider_get_tile_array(player)==tile_end_level1 || sys_collider_get_tile_array(player)==tile_end_level2 ){
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0xe8
	or	a, h
	jr	Z,00101$
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0xe9
	or	a, h
	ret	NZ
00101$:
;src/man/game.c:169: world_change=1;
	ld	iy, #_world_change
	ld	0 (iy), #0x01
;src/man/game.c:170: actual_world+=1;
	ld	a,(#_actual_world + 0)
	inc	a
	ld	(_actual_world+0), a
;src/man/game.c:172: }
	ret
;src/man/game.c:174: void man_game_pintarMapa(){
;	---------------------------------
; Function man_game_pintarMapa
; ---------------------------------
_man_game_pintarMapa::
	call	___sdcc_enter_ix
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
;src/man/game.c:179: for (char f=0; f<numeroFilas;f++){
	ld	c, #0x00
00107$:
	ld	a, c
	sub	a, #0x17
	jp	NC, 00109$
;src/man/game.c:180: for (char c=0; c<numeroColumnas;c++){
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	(sp), hl
	xor	a, a
	ld	-1 (ix), a
00104$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jp	NC, 00108$
;src/man/game.c:182: columnaEnTileset=(((buffer[c+(f*numeroColumnas)]/32)+1)*32)-(buffer[c+(f*numeroColumnas)]);
	ld	e, -1 (ix)
	ld	d, #0x00
	pop	hl
	push	hl
	add	hl, de
	ld	a, #<(_buffer)
	add	a, l
	ld	-7 (ix), a
	ld	a, #>(_buffer)
	adc	a, h
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	b, (hl)
	ld	l, b
	ld	h, #0x00
	ld	-3 (ix), l
	ld	-2 (ix), h
	bit	7, h
	jr	Z,00111$
	ld	a, l
	add	a, #0x1f
	ld	-3 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-2 (ix), a
00111$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, #0x05
00145$:
	sra	h
	rr	l
	dec	a
	jr	NZ,00145$
	ld	a, l
	inc	a
	rrca
	rrca
	rrca
	and	a, #0xe0
	sub	a, b
;src/man/game.c:183: resultado=(32-columnaEnTileset)*8;
	ld	b, a
	ld	h, #0x00
	ld	a, #0x20
	sub	a, b
	ld	l, a
	ld	a, #0x00
	sbc	a, h
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	(_resultado), hl
;src/man/game.c:184: HMMM(resultado,(buffer[c+(f*numeroColumnas)]/32)*8+256, c*8,f*8,8,8);
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	-5 (ix), l
	ld	-4 (ix), h
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	b, (hl)
	ld	l, #0x00
	ld	e, b
	ld	d, l
	bit	7, l
	jr	Z,00112$
	ld	a, b
	add	a, #0x1f
	ld	e, a
	ld	a, l
	adc	a, #0x00
	ld	d, a
00112$:
	ld	b, #0x05
00148$:
	sra	d
	rr	e
	djnz	00148$
	ex	de,hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #0x0100
	add	hl, de
	push	bc
	ld	de, #0x0008
	push	de
	ld	de, #0x0008
	push	de
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	push	de
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	push	de
	push	hl
	ld	hl, (_resultado)
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	pop	bc
;src/man/game.c:180: for (char c=0; c<numeroColumnas;c++){
	inc	-1 (ix)
	jp	00104$
00108$:
;src/man/game.c:179: for (char f=0; f<numeroFilas;f++){
	inc	c
	jp	00107$
00109$:
;src/man/game.c:187: }
	ld	sp, ix
	pop	ix
	ret
;src/man/game.c:189: void man_game_showBuffer(){
;	---------------------------------
; Function man_game_showBuffer
; ---------------------------------
_man_game_showBuffer::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;src/man/game.c:190: Cls();
	call	_Cls
;src/man/game.c:191: Screen(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_Screen
	inc	sp
;src/man/game.c:193: printf("%d",&buffer[0]);
	ld	hl, #_buffer
	push	hl
	ld	hl, #___str_9
	push	hl
	call	_printf
	pop	af
;src/man/game.c:194: printf("\r\n");
	ld	hl, #___str_11
	ex	(sp),hl
	call	_puts
	pop	af
;src/man/game.c:198: for (int f=4; f<numeroFilas;f++){
	ld	bc, #0x0004
00107$:
	ld	a, c
	sub	a, #0x06
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00109$
;src/man/game.c:199: printf("\r\nFila %d\r\n  ",f);
	push	bc
	push	bc
	ld	hl, #___str_12
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	bc
;src/man/game.c:200: for (int c=0; c<numeroColumnas;c++){
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	(sp), hl
	ld	de, #0x0000
00104$:
	ld	a, e
	sub	a, #0x20
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00108$
;src/man/game.c:201: columnaEnTileset=(((buffer[c+(f*numeroColumnas)]/32)+1)*32)-(buffer[c+(f*numeroColumnas)]);
	pop	hl
	push	hl
	add	hl, de
	ld	a, l
	add	a, #<(_buffer)
	ld	-4 (ix), a
	ld	a, h
	adc	a, #>(_buffer)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	xor	a, a
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	bit	7, -1 (ix)
	jr	Z,00111$
	ld	a, -2 (ix)
	add	a, #0x1f
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
00111$:
	ld	a, #0x05
00145$:
	sra	h
	rr	l
	dec	a
	jr	NZ,00145$
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	sub	a, -2 (ix)
	ld	l, a
	ld	a, h
	sbc	a, -1 (ix)
	ld	h, a
;src/man/game.c:202: resultado=(32-columnaEnTileset)*8;
	ld	a, #0x20
	sub	a, l
	ld	l, a
	ld	a, #0x00
	sbc	a, h
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	(_resultado), hl
;src/man/game.c:203: printf("%d ",((buffer[c+(f*numeroColumnas)]/32)+1)*32);
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	l, (hl)
	ld	h, #0x00
	ld	-2 (ix), l
	ld	-1 (ix), h
	bit	7, h
	jr	Z,00112$
	ld	a, l
	add	a, #0x1f
	ld	-2 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-1 (ix), a
00112$:
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, #0x05
00146$:
	sra	h
	rr	l
	dec	a
	jr	NZ,00146$
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	push	de
	push	hl
	ld	hl, #___str_13
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
;src/man/game.c:200: for (int c=0; c<numeroColumnas;c++){
	inc	de
	jp	00104$
00108$:
;src/man/game.c:198: for (int f=4; f<numeroFilas;f++){
	inc	bc
	jp	00107$
00109$:
;src/man/game.c:207: }
	ld	sp, ix
	pop	ix
	ret
___str_9:
	.ascii "%d"
	.db 0x00
___str_11:
	.db 0x0d
	.db 0x00
___str_12:
	.db 0x0d
	.db 0x0a
	.ascii "Fila %d"
	.db 0x0d
	.db 0x0a
	.ascii "  "
	.db 0x00
___str_13:
	.ascii "%d "
	.db 0x00
;src/man/game.c:208: void man_game_copiarSpritesVRAM(){
;	---------------------------------
; Function man_game_copiarSpritesVRAM
; ---------------------------------
_man_game_copiarSpritesVRAM::
	call	___sdcc_enter_ix
	push	af
	dec	sp
;src/man/game.c:211: for (char i=0; i<13; i++) {		
	ld	bc, #0x0000
	ld	hl, #0x0000
	ex	(sp), hl
	xor	a, a
	ld	-1 (ix), a
00103$:
	ld	a, -1 (ix)
	sub	a, #0x0d
	jr	NC,00105$
;src/man/game.c:215: SetSpritePattern(sprite, &SPRITE_DATA[siguiente],32);
	ld	hl, #_SPRITE_DATA
	add	hl, bc
	ld	d, -3 (ix)
	push	bc
	ld	a, #0x20
	push	af
	inc	sp
	push	hl
	push	de
	inc	sp
	call	_SetSpritePattern
	pop	af
	pop	af
	pop	bc
;src/man/game.c:216: SC5SpriteColors(i, &COLOR_DATA[0]);
	ld	e, -1 (ix)
	ld	d, #0x00
	push	bc
	ld	hl, #_COLOR_DATA
	push	hl
	push	de
	call	_SC5SpriteColors
	pop	af
	pop	af
	pop	bc
;src/man/game.c:217: siguiente += 32;
	ld	hl, #0x0020
	add	hl, bc
	ld	c, l
	ld	b, h
;src/man/game.c:218: sprite+=4;
	ld	a, -3 (ix)
	add	a, #0x04
	ld	-3 (ix), a
	jr	NC,00118$
	inc	-2 (ix)
00118$:
;src/man/game.c:211: for (char i=0; i<13; i++) {		
	inc	-1 (ix)
	jr	00103$
00105$:
;src/man/game.c:224: }
	ld	sp, ix
	pop	ix
	ret
;src/man/game.c:226: void wait(){
;	---------------------------------
; Function wait
; ---------------------------------
_wait::
;src/man/game.c:231: __endasm;
	halt
	halt
	halt
;src/man/game.c:232: }
	ret
;src/man/game.c:233: void man_game_cargar_buffer_musica(){
;	---------------------------------
; Function man_game_cargar_buffer_musica
; ---------------------------------
_man_game_cargar_buffer_musica::
;src/man/game.c:234: enter_name_and_extension_in_structure( &TFileMusic, &fileNameSong[0]);
	ld	hl, #_fileNameSong
	push	hl
	ld	hl, #_TFileMusic
	push	hl
	call	_enter_name_and_extension_in_structure
	pop	af
;src/man/game.c:235: fcb_open( &TFileMusic );
	ld	hl, #_TFileMusic
	ex	(sp),hl
	call	_fcb_open
;src/man/game.c:236: fcb_read( &TFileMusic, &songBuffer[0], SONG_BUFFER_TAM );  
	ld	hl, #0x0108
	ex	(sp),hl
	ld	hl, #_songBuffer
	push	hl
	ld	hl, #_TFileMusic
	push	hl
	call	_fcb_read
	pop	af
	pop	af
;src/man/game.c:237: fcb_close( &TFileMusic );
	ld	hl, #_TFileMusic
	ex	(sp),hl
	call	_fcb_close
	pop	af
;src/man/game.c:238: }
	ret
;src/man/game.c:239: void man_game_reproducir_musica_y_efectos(){
;	---------------------------------
; Function man_game_reproducir_musica_y_efectos
; ---------------------------------
_man_game_reproducir_musica_y_efectos::
;src/man/game.c:241: DisableInterupt();
	di;	
;src/man/game.c:242: PT3Rout();
	call	_PT3Rout
;src/man/game.c:243: PT3Play();
	call	_PT3Play
;src/man/game.c:251: EnableInterupt();
	ei;	
;src/man/game.c:252: }
	ret
;src/man/game.c:254: void man_game_cargar_buffer_efectos_sonido(){
;	---------------------------------
; Function man_game_cargar_buffer_efectos_sonido
; ---------------------------------
_man_game_cargar_buffer_efectos_sonido::
;src/man/game.c:262: }
	ret
;src/man/game.c:264: void man_game_reproducir_efecto_sonido(char effect){
;	---------------------------------
; Function man_game_reproducir_efecto_sonido
; ---------------------------------
_man_game_reproducir_efecto_sonido::
;src/man/game.c:277: }
	ret
;src/man/game.c:279: void debug(){
;	---------------------------------
; Function debug
; ---------------------------------
_debug::
;src/man/game.c:285: BoxFill (0, 23*8, 256, 210, 6, LOGICAL_IMP );
	xor	a, a
	ld	d,a
	ld	e,#0x06
	push	de
	ld	hl, #0x00d2
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x00b8
	push	hl
	ld	l, #0x00
	push	hl
	call	_BoxFill
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;src/man/game.c:286: PutText(0,200,Itoa(sys_collider_get_tile_down_array(player),"  ",10),8);
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	bc, #0x000a
	push	bc
	ld	bc, #___str_14
	push	bc
	push	hl
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c8
	push	hl
	ld	l, #0x00
	push	hl
	call	_PutText
	pop	af
	pop	af
;src/man/game.c:287: PutText(50,200,Itoa(tile_stairs1,"  ",10),8);
	inc	sp
	ld	hl,#0x000a
	ex	(sp),hl
	ld	hl, #___str_14
	push	hl
	ld	hl, #0x00c0
	push	hl
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c8
	push	hl
	ld	l, #0x32
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:288: PutText(100,200,Itoa(sys_entity_get_num_enemies(),"  ",10),8);
	call	_sys_entity_get_num_enemies
	ld	h, #0x00
	ld	bc, #0x000a
	push	bc
	ld	bc, #___str_14
	push	bc
	push	hl
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c8
	push	hl
	ld	l, #0x64
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:302: }
	ret
___str_14:
	.ascii "  "
	.db 0x00
;src/man/game.c:304: void pintar_HUD(){
;	---------------------------------
; Function pintar_HUD
; ---------------------------------
_pintar_HUD::
;src/man/game.c:305: HMMM(0,256+16,0,184,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xb8
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl, #0x0110
	push	hl
	ld	hl, #0x0000
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:306: HMMM(16,256+16,0,200,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xc8
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl, #0x0110
	push	hl
	ld	h, #0x00
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:307: PutText(20,184+4,Itoa(actual_world,"  ",10),8);
	ld	de, #___str_15
	ld	hl,#_actual_world + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x000a
	push	hl
	push	de
	push	bc
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00bc
	push	hl
	ld	l, #0x14
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:308: PutText(20,200+4,Itoa(player->energy,"  ",10),8);
	ld	de, #___str_15
	ld	hl, (_player)
	ld	bc, #0x0014
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000a
	push	hl
	push	de
	push	bc
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00cc
	push	hl
	ld	l, #0x14
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:309: }
	ret
___str_15:
	.ascii "  "
	.db 0x00
;main.c:4: void main(void) 
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:6: man_game_init();
	call	_man_game_init
;main.c:7: man_game_play();
;main.c:8: }
	jp	_man_game_play
	.area _CODE
	.area _INITIALIZER
__xinit__SPRITE_DATA:
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0x14	; 20
	.db #0xe6	; 230
	.db #0xee	; 238
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0x14	; 20
	.db #0xe6	; 230
	.db #0xee	; 238
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x78	; 120	'x'
	.db #0xf8	; 248
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x28	; 40
	.db #0x67	; 103	'g'
	.db #0x77	; 119	'w'
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x38	; 56	'8'
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x28	; 40
	.db #0x67	; 103	'g'
	.db #0x77	; 119	'w'
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x0b	; 11
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x17	; 23
	.db #0x0b	; 11
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xc0	; 192
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x03	; 3
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x38	; 56	'8'
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xe8	; 232
	.db #0xd0	; 208
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x73	; 115	's'
	.db #0x79	; 121	'y'
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x7b	; 123
	.db #0x79	; 121	'y'
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0xce	; 206
	.db #0x9e	; 158
	.db #0x1e	; 30
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x60	; 96
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0xde	; 222
	.db #0x9e	; 158
	.db #0x1e	; 30
	.db #0xfe	; 254
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0xc0	; 192
__xinit__COLOR_DATA:
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
__xinit__fileNameSongEffects:
	.ascii "effects.afb"
	.db 0x00
__xinit__fileNameSong:
	.ascii "song1.pt3"
	.db 0x00
	.area _CABS (ABS)
