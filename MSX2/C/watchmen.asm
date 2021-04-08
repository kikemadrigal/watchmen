;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module watchmen
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
	.globl _sys_entity_get_array_structs_objects
	.globl _sys_entity_get_array_structs_enemies
	.globl _sys_entity_create_object
	.globl _sys_entity_create_enemy1
	.globl _PT3Rout
	.globl _PT3Play
	.globl _PT3Init
	.globl _SC5SpriteColors
	.globl _SetSpritePattern
	.globl _PutSprite
	.globl _SpriteReset
	.globl _SpriteOn
	.globl _SpriteOff
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
	.globl _RealTimer
	.globl _SetRealTimer
	.globl _Screen
	.globl _Cls
	.globl _Beep
	.globl _KeySound
	.globl _fileNameSong
	.globl _fileNameSongEffects
	.globl _world_objects
	.globl _world_enemies
	.globl _COLOR_DATA_MONEY
	.globl _COLOR_DATA_ENEMY
	.globl _COLOR_DATA
	.globl _SPRITE_DATA
	.globl _resultado
	.globl _array_objects
	.globl _array_enemies
	.globl _memory_space
	.globl _secunds
	.globl _minutes
	.globl _hours
	.globl _time
	.globl _world_money
	.globl _enabled_world_change
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
	.globl _num_enemies
	.globl _array_structs_objects
	.globl _array_structs_enemies
	.globl _enemy1_template
	.globl _object_template
	.globl _player_template
	.globl _sys_entities_init
	.globl _sys_entity_create_player
	.globl _sys_entity_erase_enemy
	.globl _sys_entity_erase_all_enemies
	.globl _sys_entity_erase_object
	.globl _sys_entity_erase_all_objects
	.globl _sys_entity_get_num_enemies
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
	.globl _sys_collider_entity1_collider_entity
	.globl _sys_physics_update
	.globl _sys_physics_check_keyboard
	.globl _entity_jump
	.globl _sys_render_init
	.globl _sys_render_update
	.globl _sys_render_update_player
	.globl _sys_render_update_enemy
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
	.ds 230
_array_structs_objects::
	.ds 230
_num_enemies::
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
_enabled_world_change::
	.ds 1
_world_money::
	.ds 1
_time::
	.ds 2
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
_array_objects::
	.ds 2
_resultado::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_SPRITE_DATA::
	.ds 416
_COLOR_DATA::
	.ds 208
_COLOR_DATA_ENEMY::
	.ds 16
_COLOR_DATA_MONEY::
	.ds 16
_world_enemies::
	.ds 100
_world_objects::
	.ds 100
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:156: void sys_entities_init(){
;	---------------------------------
; Function sys_entities_init
; ---------------------------------
_sys_entities_init::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:159: memset(array_structs_enemies,0,sizeof(array_structs_enemies) );
	ld	hl, #_array_structs_enemies
	ld	b, #0xe6
00103$:
	ld	(hl), #0x00
	inc	hl
	djnz	00103$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:163: memset(array_structs_objects,0,sizeof(array_structs_objects) );
	ld	hl, #_array_structs_objects
	ld	b, #0xe6
00105$:
	ld	(hl), #0x00
	inc	hl
	djnz	00105$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:164: num_enemies=0;
	ld	hl,#_num_enemies + 0
	ld	(hl), #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:166: num_objects=0;
	ld	hl,#_num_objects + 0
	ld	(hl), #0x00
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:167: }
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
	.db #0x04	;  4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x000a
	.db #0x0a	; 10
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
	.dw #0x000a
	.db #0x0a	; 10
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
	.dw #0x000a
	.db #0x0a	; 10
	.dw #0x0000
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:171: TEntity* sys_entity_create_player(){
;	---------------------------------
; Function sys_entity_create_player
; ---------------------------------
_sys_entity_create_player::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:172: return &player_template;
	ld	hl, #_player_template
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:173: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:174: TEntity* sys_entity_create_enemy1(){
;	---------------------------------
; Function sys_entity_create_enemy1
; ---------------------------------
_sys_entity_create_enemy1::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:175: TEntity* enemy=&array_structs_enemies[num_enemies];
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
	add	hl, de
	add	hl, bc
	ld	c, l
	ld	b, h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:176: memcpy(enemy,&enemy1_template,sizeof(TEntity));
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #_enemy1_template
	ld	bc, #0x0017
	ldir
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:177: ++num_enemies;
	ld	hl, #_num_enemies+0
	inc	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:178: return enemy;
	ld	l, c
	ld	h, b
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:179: }  
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:188: TEntity* sys_entity_create_object(){
;	---------------------------------
; Function sys_entity_create_object
; ---------------------------------
_sys_entity_create_object::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:189: TEntity* object=&array_structs_objects[num_objects];
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
	add	hl, de
	add	hl, bc
	ld	c, l
	ld	b, h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:190: memcpy(object,&object_template,sizeof(TEntity));
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #_object_template
	ld	bc, #0x0017
	ldir
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:191: ++num_objects;
	ld	hl, #_num_objects+0
	inc	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:192: return object;
	ld	l, c
	ld	h, b
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:193: }  
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:195: void sys_entity_erase_enemy(char i){
;	---------------------------------
; Function sys_entity_erase_enemy
; ---------------------------------
_sys_entity_erase_enemy::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:196: --num_enemies;
	ld	hl, #_num_enemies+0
	dec	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:197: TEntity *enemy=&array_structs_enemies[i];
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
	add	hl, bc
	ex	de, hl
	ld	hl, #_array_structs_enemies
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:198: PutSprite(enemy->plane , player_Jump_right_pattern, 0,212,0 );
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:200: memcpy(&array_structs_enemies[i],&array_structs_enemies[num_enemies],sizeof(TEntity));
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
	add	hl, bc
	ld	bc, #_array_structs_enemies
	add	hl, bc
	ld	bc, #0x0017
	ldir
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:201: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:202: void sys_entity_erase_all_enemies(){
;	---------------------------------
; Function sys_entity_erase_all_enemies
; ---------------------------------
_sys_entity_erase_all_enemies::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:203: for (char i=0;i<sys_entity_get_num_enemies();++i){
	ld	b, #0x00
00103$:
	push	bc
	call	_sys_entity_get_num_enemies
	pop	bc
	ld	a, b
	sub	a, l
	ret	NC
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:204: sys_entity_erase_enemy(i);
	push	bc
	push	bc
	inc	sp
	call	_sys_entity_erase_enemy
	inc	sp
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:203: for (char i=0;i<sys_entity_get_num_enemies();++i){
	inc	b
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:206: }
	jr	00103$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:216: void sys_entity_erase_object(char i){
;	---------------------------------
; Function sys_entity_erase_object
; ---------------------------------
_sys_entity_erase_object::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:217: --num_objects;
	ld	hl, #_num_objects+0
	dec	(hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:218: TEntity *object=&array_structs_objects[i];
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
	add	hl, bc
	ex	de, hl
	ld	hl, #_array_structs_objects
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:219: PutSprite(object->plane, object_money_pattern, 0,212,0 );
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
	ld	e,#0x30
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	pop	de
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:221: memcpy(&array_structs_objects[i],&array_structs_objects[num_objects],sizeof(TEntity));
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
	add	hl, bc
	ld	bc, #_array_structs_objects
	add	hl, bc
	ld	bc, #0x0017
	ldir
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:222: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:223: void sys_entity_erase_all_objects(){
;	---------------------------------
; Function sys_entity_erase_all_objects
; ---------------------------------
_sys_entity_erase_all_objects::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:224: for (char i=0;i<sys_entity_get_num_objects();++i){
	ld	b, #0x00
00103$:
	push	bc
	call	_sys_entity_get_num_objects
	pop	bc
	ld	a, b
	sub	a, l
	ret	NC
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:225: sys_entity_erase_object(i);
	push	bc
	push	bc
	inc	sp
	call	_sys_entity_erase_object
	inc	sp
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:224: for (char i=0;i<sys_entity_get_num_objects();++i){
	inc	b
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:227: }  
	jr	00103$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:231: TEntity* sys_entity_get_array_structs_enemies(){
;	---------------------------------
; Function sys_entity_get_array_structs_enemies
; ---------------------------------
_sys_entity_get_array_structs_enemies::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:232: return array_structs_enemies;
	ld	hl, #_array_structs_enemies
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:233: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:239: TEntity* sys_entity_get_array_structs_objects(){
;	---------------------------------
; Function sys_entity_get_array_structs_objects
; ---------------------------------
_sys_entity_get_array_structs_objects::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:240: return array_structs_objects;
	ld	hl, #_array_structs_objects
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:241: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:244: char sys_entity_get_num_enemies(){
;	---------------------------------
; Function sys_entity_get_num_enemies
; ---------------------------------
_sys_entity_get_num_enemies::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:245: return num_enemies;
	ld	iy, #_num_enemies
	ld	l, 0 (iy)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:246: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:252: char sys_entity_get_num_objects(){
;	---------------------------------
; Function sys_entity_get_num_objects
; ---------------------------------
_sys_entity_get_num_objects::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:253: return num_objects;
	ld	iy, #_num_objects
	ld	l, 0 (iy)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:254: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:257: char sys_entity_get_max_enemies(){
;	---------------------------------
; Function sys_entity_get_max_enemies
; ---------------------------------
_sys_entity_get_max_enemies::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:258: return MAX_enemies;
	ld	l, #0x0a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:259: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:265: char sys_entity_get_max_objects(){
;	---------------------------------
; Function sys_entity_get_max_objects
; ---------------------------------
_sys_entity_get_max_objects::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:266: return MAX_enemies;
	ld	l, #0x0a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/man/entity.c:267: }
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:23: void sys_collider_init(){
;	---------------------------------
; Function sys_collider_init
; ---------------------------------
_sys_collider_init::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:24: bufferDir=getBuffer();
	call	_getBuffer
	ld	(_bufferDir), hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:25: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:27: int sys_collider_get_column_entity(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_column_entity
; ---------------------------------
_sys_collider_get_column_entity::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:30: return ((entity->x+6)/8);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0006
	add	hl, bc
	ex	de, hl
	ld	l, e
	ld	h, d
	bit	7, d
	jr	Z,00103$
	ld	hl, #0x000d
	add	hl, bc
00103$:
	ld	b, #0x03
00109$:
	sra	h
	rr	l
	djnz	00109$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:31: }
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:32: int sys_collider_get_file_entity(TEntity *entity){
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:61: char sys_collider_entity1_collider_entity(TEntity *entity1, TEntity *entity2){
;	---------------------------------
; Function sys_collider_entity1_collider_entity
; ---------------------------------
_sys_collider_entity1_collider_entity::
	call	___sdcc_enter_ix
	push	af
	push	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:63: if (entity2->x < entity1->x + 16 &&  entity2->x + 16 > entity1->x && entity2->y < entity1->y + 16 && 16 + entity2->y > entity1->y){
	ld	a, 6 (ix)
	ld	-4 (ix), a
	ld	a, 7 (ix)
	ld	-3 (ix), a
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
	pop	de
	pop	hl
	push	hl
	push	de
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0010
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00129$
	xor	a, #0x80
00129$:
	jp	P, 00102$
	ld	hl, #0x0010
	add	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00130$
	xor	a, #0x80
00130$:
	jp	P, 00102$
	pop	hl
	push	hl
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0004
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00131$
	xor	a, #0x80
00131$:
	jp	P, 00102$
	ld	hl, #0x0010
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00132$
	xor	a, #0x80
00132$:
	jp	P, 00102$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:64: return 1;
	ld	l, #0x01
	jr	00107$
00102$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:66: return 0;
	ld	l, #0x00
00107$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/./src/sys/collider.c:68: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:22: void sys_physics_update(TEntity *entity){
;	---------------------------------
; Function sys_physics_update
; ---------------------------------
_sys_physics_update::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:23: if (entity->type==entity_type_player){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	dec	a
	jp	NZ,00114$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:24: sys_physics_check_keyboard(entity);
	push	bc
	push	bc
	call	_sys_physics_check_keyboard
	pop	af
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:26: if(entity->jump==1){
	ld	hl, #0x000e
	add	hl, bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	l, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:27: entity->y+=entity->vy;
	ld	a, c
	add	a, #0x04
	ld	e, a
	ld	a, b
	adc	a, #0x00
	ld	d, a
	ld	a, c
	add	a, #0x0b
	ld	-6 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-5 (ix), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:26: if(entity->jump==1){
	dec	l
	jr	NZ,00104$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:27: entity->y+=entity->vy;
	ld	a, (de)
	ld	-4 (ix), a
	inc	de
	ld	a, (de)
	ld	-3 (ix), a
	dec	de
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	ld	a, l
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, h
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	l, e
	ld	h, d
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:28: if(entity->old_y-16>=entity->y){
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0007
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	ld	a, l
	add	a, #0xf0
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	a, l
	sub	a, -2 (ix)
	ld	a, h
	sbc	a, -1 (ix)
	jp	PO, 00150$
	xor	a, #0x80
00150$:
	jp	M, 00104$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:29: entity->vy*=-1;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	neg
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:30: entity->jump=0;
	pop	hl
	push	hl
	ld	(hl), #0x00
00104$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:34: if(entity->x<=0) entity->x=0;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	dec	hl
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00151$
	xor	a, #0x80
00151$:
	jp	M, 00106$
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00106$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:36: if(entity->y>180) entity->y=212-16;
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, #0xb4
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00152$
	xor	a, #0x80
00152$:
	jp	P, 00108$
	ld	l, e
	ld	h, d
	ld	(hl), #0xc4
	inc	hl
	ld	(hl), #0x00
00108$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:39: if (sys_collider_get_tile_down_array(entity)<tile_stairs1 || sys_collider_get_tile_down_array(entity)>=255){
	push	bc
	push	de
	push	bc
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	de
	pop	bc
	ld	a, l
	sub	a, #0xc0
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00109$
	push	de
	push	bc
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	de
	ld	bc, #0x80ff
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, bc
	jr	C,00114$
00109$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:41: entity->y+=entity->vy;
	ld	l, e
	ld	h, d
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
00114$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:54: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:58: void sys_physics_check_keyboard(TEntity *entity){
;	---------------------------------
; Function sys_physics_check_keyboard
; ---------------------------------
_sys_physics_check_keyboard::
	call	___sdcc_enter_ix
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:61: char joy = JoystickRead(0);
	xor	a, a
	push	af
	inc	sp
	call	_JoystickRead
	inc	sp
	ld	-11 (ix), l
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:65: entity->dir=1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	hl, #0x000c
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:66: entity->y-=entity->vy;
	ld	hl, #0x0004
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	hl, #0x000b
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:62: if(joy==1){
	ld	a, -11 (ix)
	dec	a
	jp	NZ,00110$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:64: if(sys_collider_get_tile_array(entity)==tile_stairs1 ||sys_collider_get_tile_array(entity)==tile_stairs2 || sys_collider_get_tile_down_array(entity)==tile_stairs1|| sys_collider_get_tile_down_array(entity)==tile_stairs2){
	push	bc
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	pop	bc
	ld	a, l
	sub	a, #0xc0
	or	a, h
	jr	Z,00103$
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
	jr	Z,00103$
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
	jr	Z,00103$
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
	jr	NZ,00104$
00103$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:65: entity->dir=1;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x01
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:66: entity->y-=entity->vy;
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:67: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
	jr	00110$
00104$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:69: }else if(entity->jump==0){
	ld	l, c
	ld	h, b
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	NZ,00110$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:70: entity_jump(entity);
	push	bc
	push	bc
	call	_entity_jump
	pop	af
	pop	bc
00110$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:76: entity->x+=entity->vx;
	ld	hl, #0x0002
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	hl, #0x000a
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:73: if(joy==2){
	ld	a, -11 (ix)
	sub	a, #0x02
	jr	NZ,00112$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:74: entity->dir=3;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x03
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:75: entity_jump(entity); 
	push	bc
	push	bc
	call	_entity_jump
	pop	af
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:76: entity->x+=entity->vx;
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
00112$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:78: if(joy==3){
	ld	a, -11 (ix)
	sub	a, #0x03
	jr	NZ,00114$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:79: entity->dir=3;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x03
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:81: entity->x+=entity->vx;
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:82: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
00114$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:86: if(joy==5){
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	NZ,00119$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:87: if(sys_collider_get_tile_down_array(entity)==tile_stairs1 ||sys_collider_get_tile_down_array(entity)==tile_stairs2 ){
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
	jr	Z,00115$
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
	jr	NZ,00119$
00115$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:88: entity->dir=5;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x05
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:89: entity->y+=entity->vy;
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:90: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
00119$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:95: if(joy==7) {
	ld	a, -11 (ix)
	sub	a, #0x07
	jr	NZ,00121$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:96: entity->dir=7;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x07
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:97: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:98: entity->x-=entity->vx; 
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
00121$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:100: if(joy==8){
	ld	a, -11 (ix)
	sub	a, #0x08
	jr	NZ,00123$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:101: entity->dir=7;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x07
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:102: entity_jump(entity);
	push	bc
	call	_entity_jump
	pop	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:103: entity->x-=entity->vx; 
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
00123$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:107: char trigger = TriggerRead(0);
	xor	a, a
	push	af
	inc	sp
	call	_TriggerRead
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:108: if (trigger!=0) {
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:115: }
	ld	sp,ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:118: void entity_jump(TEntity *entity){
;	---------------------------------
; Function entity_jump
; ---------------------------------
_entity_jump::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:120: if (entity->jump==0 && sys_collider_get_tile_down_array(entity)>=tile_floor_tile && sys_collider_get_tile_down_array(entity)<255){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	hl, #0x000e
	add	hl, bc
	ex	de, hl
	ld	a, (de)
	or	a, a
	jr	NZ,00105$
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
	jr	C,00105$
	push	bc
	push	de
	push	bc
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	de
	pop	bc
	ld	a, l
	sub	a, #0xff
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00105$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:122: entity->jump=1;  
	ld	a, #0x01
	ld	(de), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:124: entity->vy*=-1;
	ld	hl, #0x000b
	add	hl, bc
	ld	a, (hl)
	neg
	ld	(hl), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:125: entity->old_y=entity->y;
	ld	hl, #0x0007
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x0004
	add	hl, bc
	ld	a, (hl)
	ld	(de), a
00105$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/physics.c:127: }
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
	call	_SpriteSmall
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:28: SpriteOff();
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:29: }
	jp	_SpriteOff
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:32: void sys_render_update(TEntity *entity){
;	---------------------------------
; Function sys_render_update
; ---------------------------------
_sys_render_update::
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:33: if (entity->type==entity_type_player)sys_render_update_player(entity);
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:34: if (entity->type==entity_type_enemy1)sys_render_update_enemy(entity);
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:36: if (entity->type==entity_type_object_money)sys_render_update_object(entity);
	ld	a, (bc)
	sub	a, #0x16
	ret	NZ
	push	bc
	call	_sys_render_update_object
	pop	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:39: }
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:40: void sys_render_update_player(TEntity *player){
;	---------------------------------
; Function sys_render_update_player
; ---------------------------------
_sys_render_update_player::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	dec	sp
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:49: if (player->dir==1 || player->dir==5){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	ld	-7 (ix), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:50: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:49: if (player->dir==1 || player->dir==5){
	ld	a, -7 (ix)
	dec	a
	jr	Z,00118$
	ld	a, -7 (ix)
	sub	a, #0x05
	jr	NZ,00119$
00118$:
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:50: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:52: if (player->jump==1){
	ld	hl, #0x000e
	add	hl, bc
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:55: if(player->andando ==0 ){
	ld	a, c
	add	a, #0x0d
	ld	-2 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-1 (ix), a
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:51: }else if (player->dir==3){
	ld	a, -7 (ix)
	sub	a, #0x03
	jr	NZ,00116$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:52: if (player->jump==1){
	ld	c, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:50: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	b, (hl)
	ld	a, (de)
	ld	e, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	d, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:52: if (player->jump==1){
	dec	c
	jr	NZ,00105$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:53: PutSprite( player->plane, player_Jump_right_pattern, player->x,player->y,0 );
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:55: if(player->andando ==0 ){
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:56: PutSprite( player->plane, player_right_pattern, player->x,player->y,0 );
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:58: PutSprite( player->plane, player_right_walking_pattern, player->x,player->y,  0);
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:62: }else if(player->dir==7){
	ld	a, -7 (ix)
	sub	a, #0x07
	jr	NZ,00122$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:63: if (player->jump==1){
	ld	c, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:50: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	b, (hl)
	ld	a, (de)
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:63: if (player->jump==1){
	dec	c
	jr	NZ,00111$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:64: PutSprite( player->plane, player_jump_left_pattern, player->x,player->y,0 );
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:66: if(player->andando ==0){
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ,00108$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:67: PutSprite( player->plane, player_left_pattern, player->x,player->y, 0 );
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:69: PutSprite( player->plane, player_left_walking_pattern, player->x,player->y,  0 );
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:73: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:77: void sys_render_update_enemy(TEntity *enemy){   
;	---------------------------------
; Function sys_render_update_enemy
; ---------------------------------
_sys_render_update_enemy::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:79: sys_anim_update(enemy);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_anim_update
	pop	af
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:81: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:82: if (enemy->andando){
	ld	hl, #0x000d
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:83: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	hl, #0x0004
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ex	de,hl
	ld	de, #0x0011
	add	hl, de
	ld	b, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:81: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:82: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:83: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	d, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:82: if (enemy->andando){
	or	a, a
	jr	Z,00102$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:83: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:85: PutSprite(enemy->plane,enemy1_right_walking_pattern,enemy->x,enemy->y,0);
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:88: }else if (enemy->dir==7 && enemy->x<256 && enemy->x>0){
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:89: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:90: PutSprite(enemy->plane,enemy1_left_pattern,enemy->x,enemy->y,0);
	ld	d, e
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:83: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	h, (hl)
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:89: if (enemy->andando){
	or	a, a
	jr	Z,00105$
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:90: PutSprite(enemy->plane,enemy1_left_pattern,enemy->x,enemy->y,0);
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:92: PutSprite(enemy->plane,enemy1_left_walking_pattern,enemy->x,enemy->y,0);
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:95: PutSprite(enemy->plane,enemy1_left_walking_pattern,0,212,0);
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
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:97: }
	ld	sp, ix
	pop	ix
	ret
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:104: void sys_render_update_object(TEntity *object){
;	---------------------------------
; Function sys_render_update_object
; ---------------------------------
_sys_render_update_object::
	call	___sdcc_enter_ix
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:105: PutSprite(object->plane,object_money_pattern,object->x,object->y,0);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	bc, #0x0011
	add	hl, bc
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, #0x30
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
;/Users/casa/Desktop/MSX1-MSX2-ZX-asm-basic-watchmen/MSX2/C/src/sys/render.c:106: }
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
;src/man/game.c:62: void man_game_init(){
;	---------------------------------
; Function man_game_init
; ---------------------------------
_man_game_init::
;src/man/game.c:64: sys_render_init();
	call	_sys_render_init
;src/man/game.c:67: load_file_into_buffer_with_structure("LOADER.S05");
	ld	hl, #___str_1
	push	hl
	call	_load_file_into_buffer_with_structure
;src/man/game.c:69: HMMC(&buffer[0], 0,0,256,212 ); 
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
;src/man/game.c:72: load_file_into_buffer("tileset.s05");
	ld	hl, #___str_2
	push	hl
	call	_load_file_into_buffer
;src/man/game.c:76: HMMC(&buffer[0], 0,256,256,212); 
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
;src/man/game.c:78: load_file_into_buffer("sprites.bin");
	ld	hl, #___str_3
	push	hl
	call	_load_file_into_buffer
	pop	af
;src/man/game.c:80: man_game_copiarSpritesVRAM();
	call	_man_game_copiarSpritesVRAM
;src/man/game.c:86: InitPSG();
	call	_InitPSG
;src/man/game.c:87: man_game_cargar_buffer_musica();
	call	_man_game_cargar_buffer_musica
;src/man/game.c:89: PT3Init (songBuffer+99, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #(_songBuffer + 0x0063)
	push	hl
	call	_PT3Init
;src/man/game.c:91: SetRealTimer(0);	
	inc	sp
	ld	hl,#0x0000
	ex	(sp),hl
	call	_SetRealTimer
	pop	af
;src/man/game.c:92: KeySound(0);
	xor	a, a
	push	af
	inc	sp
	call	_KeySound
	inc	sp
;src/man/game.c:94: actual_world=0;
	ld	hl,#_actual_world + 0
	ld	(hl), #0x00
;src/man/game.c:98: world_change=1;    
	ld	hl,#_world_change + 0
	ld	(hl), #0x01
;src/man/game.c:101: player=sys_entity_create_player();
	call	_sys_entity_create_player
	ld	(_player), hl
;src/man/game.c:102: PutText(0,0, "Eres un vigilante y como siempre estas durmiendo te han robado.",0);
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
;src/man/game.c:103: PutText(0,16, "Atrapa a todos los ladr0nes y recoge las monedas que han ido perdiendo.",0);
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
;src/man/game.c:104: PutText(20,180, "Press any key to continue",0);
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
;src/man/game.c:105: WaitKey();
;src/man/game.c:106: }
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
;src/man/game.c:108: void man_game_play(){
;	---------------------------------
; Function man_game_play
; ---------------------------------
_man_game_play::
	call	___sdcc_enter_ix
	dec	sp
;src/man/game.c:109: do{
00119$:
;src/man/game.c:111: man_game_update();
	call	_man_game_update
;src/man/game.c:115: sys_physics_update(player);
	ld	hl, (_player)
	push	hl
	call	_sys_physics_update
	pop	af
;src/man/game.c:116: sys_render_update(player);
	ld	hl, (_player)
	push	hl
	call	_sys_render_update
	pop	af
;src/man/game.c:118: for (char i=0;i<sys_entity_get_num_enemies();++i){
	xor	a, a
	ld	-1 (ix), a
00123$:
	call	_sys_entity_get_num_enemies
	ld	a, -1 (ix)
	sub	a, l
	jr	NC,00103$
;src/man/game.c:119: TEntity *enemy=&array_enemies[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, (_array_enemies)
	add	hl, de
;src/man/game.c:121: sys_ai_update(enemy);
	push	hl
	push	hl
	call	_sys_ai_update
	pop	af
	pop	hl
;src/man/game.c:122: sys_render_update(enemy);
	push	hl
	push	hl
	call	_sys_render_update
	pop	af
	ld	hl, (_player)
	push	hl
	call	_sys_collider_entity1_collider_entity
	pop	af
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00124$
;src/man/game.c:124: Beep();
	call	_Beep
;src/man/game.c:125: player->lives-=1;
	ld	hl, (_player)
	ld	bc, #0x0014
	add	hl, bc
	ld	a, (hl)
	dec	a
	ld	(hl), a
;src/man/game.c:126: pintar_HUD();
	call	_pintar_HUD
00124$:
;src/man/game.c:118: for (char i=0;i<sys_entity_get_num_enemies();++i){
	inc	-1 (ix)
	jr	00123$
00103$:
;src/man/game.c:130: for (char i=0;i<sys_entity_get_num_objects();++i){
	xor	a, a
	ld	-1 (ix), a
00126$:
	call	_sys_entity_get_num_objects
	ld	a, -1 (ix)
	sub	a, l
	jr	NC,00106$
;src/man/game.c:131: TEntity *object=&array_objects[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, (_array_objects)
	add	hl, de
;src/man/game.c:132: sys_render_update(object);
	push	hl
	push	hl
	call	_sys_render_update
	pop	af
	ld	hl, (_player)
	push	hl
	call	_sys_collider_entity1_collider_entity
	pop	af
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00127$
;src/man/game.c:125: player->lives-=1;
	ld	hl, (_player)
;src/man/game.c:136: player->points+=10;
	ld	bc, #0x0012
	add	hl, bc
	ld	a, (hl)
	inc	hl
	ld	c, (hl)
	dec	hl
	add	a, #0x0a
	ld	e, a
	ld	a, c
	adc	a, #0x00
	ld	(hl), e
	inc	hl
	ld	(hl), a
;src/man/game.c:137: world_money-=1;
	ld	a,(#_world_money + 0)
	ld	hl, #_world_money
	add	a, #0xff
	ld	(hl), a
;src/man/game.c:138: pintar_HUD();
	call	_pintar_HUD
;src/man/game.c:139: Beep();
	call	_Beep
;src/man/game.c:140: sys_entity_erase_object(i);
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_sys_entity_erase_object
	inc	sp
00127$:
;src/man/game.c:130: for (char i=0;i<sys_entity_get_num_objects();++i){
	inc	-1 (ix)
	jr	00126$
00106$:
;src/man/game.c:149: if (world_money==0){
	ld	a,(#_world_money + 0)
	or	a, a
	jp	NZ, 00118$
;src/man/game.c:150: if (time % 3==0)HMMM(8*8,256,30*8,24*8,16,16);
	ld	hl, #0x0003
	push	hl
	ld	hl, (_time)
	push	hl
	call	__moduint
	pop	af
	pop	af
	ld	a, h
	or	a, l
	jr	NZ,00110$
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xc0
	push	hl
	ld	l, #0xf0
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x0040
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	jr	00111$
00110$:
;src/man/game.c:151: else if (enabled_world_change==0)HMMM(8*8,256+100,30*8,24*8,16,16);
	ld	a,(#_enabled_world_change + 0)
	or	a, a
	jr	NZ,00111$
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xc0
	push	hl
	ld	l, #0xf0
	push	hl
	ld	hl, #0x0164
	push	hl
	ld	hl, #0x0040
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
00111$:
;src/man/game.c:152: if (sys_collider_get_tile_array(player)==tile_phone1 || sys_collider_get_tile_array(player)==tile_phone2){
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0x28
	or	a, h
	jr	Z,00112$
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0x24
	or	a, h
	jr	NZ,00113$
00112$:
;src/man/game.c:153: enabled_world_change=1;
	ld	hl,#_enabled_world_change + 0
	ld	(hl), #0x01
00113$:
;src/man/game.c:155: if (enabled_world_change==1)man_game_check_change_world();
	ld	a,(#_enabled_world_change + 0)
	dec	a
	jr	NZ,00118$
	call	_man_game_check_change_world
00118$:
;src/man/game.c:159: time=RealTimer();
	call	_RealTimer
	ld	(_time), hl
;src/man/game.c:160: PutText(200,192,Itoa(time/60,"      ",10),0);
	ld	hl, #0x003c
	push	hl
	ld	hl, (_time)
	push	hl
	call	__divuint
	pop	af
	pop	af
	ld	bc, #0x000a
	push	bc
	ld	bc, #___str_7
	push	bc
	push	hl
	call	_Itoa
	pop	af
	pop	af
	pop	af
	xor	a, a
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c0
	push	hl
	ld	l, #0xc8
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:165: wait();
	call	_wait
;src/man/game.c:166: }while(1);
	jp	00119$
;src/man/game.c:167: }
	inc	sp
	pop	ix
	ret
___str_7:
	.ascii "      "
	.db 0x00
;src/man/game.c:169: void man_game_update(){
;	---------------------------------
; Function man_game_update
; ---------------------------------
_man_game_update::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;src/man/game.c:170: if (world_change==1){
	ld	a,(#_world_change + 0)
	dec	a
	jp	NZ,00119$
;src/man/game.c:171: Cls();
	call	_Cls
;src/man/game.c:172: sys_entity_erase_all_objects();
	call	_sys_entity_erase_all_objects
;src/man/game.c:173: sys_entity_erase_all_enemies();
	call	_sys_entity_erase_all_enemies
;src/man/game.c:175: if (actual_world==0){
	ld	a,(#_actual_world + 0)
	or	a, a
	jr	NZ,00107$
;src/man/game.c:177: load_file_into_buffer_with_structure("world0.bin");
	ld	hl, #___str_8
	push	hl
	call	_load_file_into_buffer_with_structure
	pop	af
;src/man/game.c:179: world_money=6;
	ld	hl,#_world_money + 0
	ld	(hl), #0x06
;src/man/game.c:182: player->x=1*8;
	ld	hl, (_player)
	inc	hl
	inc	hl
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:183: player->y=19*8;
	ld	hl, (_player)
	ld	bc, #0x0004
	add	hl, bc
	ld	(hl), #0x98
	inc	hl
	ld	(hl), #0x00
	jr	00126$
00107$:
;src/man/game.c:185: }else if (actual_world==1){
	ld	a,(#_actual_world + 0)
	dec	a
	jr	NZ,00104$
;src/man/game.c:186: load_file_into_buffer_with_structure("world1.bin");
	ld	hl, #___str_9
	push	hl
	call	_load_file_into_buffer_with_structure
	pop	af
;src/man/game.c:187: player->x=14*8;
	ld	hl, (_player)
	inc	hl
	inc	hl
	ld	(hl), #0x70
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:188: player->y=20*8;
	ld	hl, (_player)
	ld	bc, #0x0004
	add	hl, bc
	ld	(hl), #0xa0
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:189: world_money=6;
	ld	hl,#_world_money + 0
	ld	(hl), #0x06
	jr	00126$
00104$:
;src/man/game.c:190: }else if (actual_world==2){
	ld	a,(#_actual_world + 0)
	sub	a, #0x02
	jr	NZ,00126$
;src/man/game.c:191: player->x=14*8;
	ld	hl, (_player)
	inc	hl
	inc	hl
	ld	(hl), #0x70
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:192: player->y=20*8;
	ld	hl, (_player)
	ld	bc, #0x0004
	add	hl, bc
	ld	(hl), #0xa0
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:193: world_money=20;
	ld	hl,#_world_money + 0
	ld	(hl), #0x14
;src/man/game.c:200: for (int i=0;i<MAX_enemies;i++){ 
00126$:
	ld	bc, #0x0000
00114$:
	ld	a, c
	sub	a, #0x0a
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00109$
;src/man/game.c:201: TCoordinate_enemy* coordinate_enemy=&world_enemies[actual_world][i];
	ld	de, (_actual_world)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ex	de, hl
	ld	hl, #_world_enemies
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, de
	inc	sp
	inc	sp
	push	hl
;src/man/game.c:202: TEntity *enemy=sys_entity_create_enemy1();
	push	bc
	call	_sys_entity_create_enemy1
	pop	bc
	ex	de,hl
;src/man/game.c:203: enemy->x=coordinate_enemy->x;
	ld	hl, #0x0002
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;src/man/game.c:204: enemy->y=coordinate_enemy->y;
	ld	hl, #0x0004
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;src/man/game.c:205: enemy->type=coordinate_enemy->type;
	pop	hl
	push	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	(de), a
;src/man/game.c:207: enemy->plane=enemy1_plane+sys_entity_get_num_enemies();
	ld	hl, #0x0011
	add	hl, de
	push	hl
	push	bc
	call	_sys_entity_get_num_enemies
	ld	a, l
	pop	bc
	pop	hl
	add	a, #0x05
	ld	(hl), a
;src/man/game.c:200: for (int i=0;i<MAX_enemies;i++){ 
	inc	bc
	jp	00114$
00109$:
;src/man/game.c:210: for (int i=0; i<MAX_objects;i++){
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00117$:
	ld	a, -2 (ix)
	sub	a, #0x0a
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00110$
;src/man/game.c:211: TCoordinate_object* coordinate_object=&world_objects[actual_world][i];
	ld	bc, (_actual_world)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ex	de, hl
	ld	hl, #_world_objects
	add	hl, de
	ex	de, hl
	ld	c, -2 (ix)
	ld	b, -1 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, de
	inc	sp
	inc	sp
	push	hl
;src/man/game.c:212: TEntity *object=sys_entity_create_object();
	call	_sys_entity_create_object
	ld	c, l
	ld	b, h
;src/man/game.c:213: object->y=coordinate_object->y;
	ld	hl, #0x0004
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/game.c:214: object->x=coordinate_object->x;
	ld	hl, #0x0002
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/game.c:215: object->type=coordinate_object->type;
	pop	hl
	push	hl
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	(bc), a
;src/man/game.c:216: object->plane=object_money+sys_entity_get_num_objects();
	ld	hl, #0x0011
	add	hl, bc
	push	hl
	call	_sys_entity_get_num_objects
	ld	a, l
	pop	hl
	add	a, #0x0f
	ld	(hl), a
;src/man/game.c:210: for (int i=0; i<MAX_objects;i++){
	inc	-2 (ix)
	jp	NZ,00117$
	inc	-1 (ix)
	jp	00117$
00110$:
;src/man/game.c:221: man_game_pintarMapa();
	call	_man_game_pintarMapa
;src/man/game.c:222: array_enemies=sys_entity_get_array_structs_enemies();
	call	_sys_entity_get_array_structs_enemies
	ld	(_array_enemies), hl
;src/man/game.c:223: array_objects=sys_entity_get_array_structs_objects();
	call	_sys_entity_get_array_structs_objects
	ld	(_array_objects), hl
;src/man/game.c:224: pintar_HUD();
	call	_pintar_HUD
;src/man/game.c:225: SpriteOn();
	call	_SpriteOn
;src/man/game.c:226: world_change=0;
	ld	hl,#_world_change + 0
	ld	(hl), #0x00
;src/man/game.c:228: enabled_world_change=0;
	ld	hl,#_enabled_world_change + 0
	ld	(hl), #0x00
00119$:
;src/man/game.c:233: }
	ld	sp, ix
	pop	ix
	ret
___str_8:
	.ascii "world0.bin"
	.db 0x00
___str_9:
	.ascii "world1.bin"
	.db 0x00
;src/man/game.c:234: void man_game_check_change_world(){
;	---------------------------------
; Function man_game_check_change_world
; ---------------------------------
_man_game_check_change_world::
;src/man/game.c:235: if (sys_collider_get_tile_array(player)==tile_end_level1 || sys_collider_get_tile_array(player)==tile_end_level2 ){
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
;src/man/game.c:236: world_change=1;
	ld	iy, #_world_change
	ld	0 (iy), #0x01
;src/man/game.c:237: actual_world+=1;
	ld	a,(#_actual_world + 0)
	inc	a
	ld	(_actual_world+0), a
;src/man/game.c:239: }
	ret
;src/man/game.c:241: void man_game_pintarMapa(){
;	---------------------------------
; Function man_game_pintarMapa
; ---------------------------------
_man_game_pintarMapa::
	call	___sdcc_enter_ix
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
;src/man/game.c:246: for (char f=0; f<numeroFilas;f++){
	ld	c, #0x00
00107$:
	ld	a, c
	sub	a, #0x17
	jp	NC, 00109$
;src/man/game.c:247: for (char c=0; c<numeroColumnas;c++){
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
;src/man/game.c:249: columnaEnTileset=(((buffer[c+(f*numeroColumnas)]/32)+1)*32)-(buffer[c+(f*numeroColumnas)]);
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
;src/man/game.c:250: resultado=(32-columnaEnTileset)*8;
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
;src/man/game.c:251: HMMM(resultado,(buffer[c+(f*numeroColumnas)]/32)*8+256, c*8,f*8,8,8);
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
;src/man/game.c:247: for (char c=0; c<numeroColumnas;c++){
	inc	-1 (ix)
	jp	00104$
00108$:
;src/man/game.c:246: for (char f=0; f<numeroFilas;f++){
	inc	c
	jp	00107$
00109$:
;src/man/game.c:254: }
	ld	sp, ix
	pop	ix
	ret
;src/man/game.c:256: void man_game_showBuffer(){
;	---------------------------------
; Function man_game_showBuffer
; ---------------------------------
_man_game_showBuffer::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;src/man/game.c:257: Cls();
	call	_Cls
;src/man/game.c:258: Screen(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_Screen
	inc	sp
;src/man/game.c:260: printf("%d",&buffer[0]);
	ld	hl, #_buffer
	push	hl
	ld	hl, #___str_10
	push	hl
	call	_printf
	pop	af
;src/man/game.c:261: printf("\r\n");
	ld	hl, #___str_12
	ex	(sp),hl
	call	_puts
	pop	af
;src/man/game.c:265: for (int f=4; f<numeroFilas;f++){
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
;src/man/game.c:266: printf("\r\nFila %d\r\n  ",f);
	push	bc
	push	bc
	ld	hl, #___str_13
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	bc
;src/man/game.c:267: for (int c=0; c<numeroColumnas;c++){
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
;src/man/game.c:268: columnaEnTileset=(((buffer[c+(f*numeroColumnas)]/32)+1)*32)-(buffer[c+(f*numeroColumnas)]);
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
;src/man/game.c:269: resultado=(32-columnaEnTileset)*8;
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
;src/man/game.c:270: printf("%d ",((buffer[c+(f*numeroColumnas)]/32)+1)*32);
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
	ld	hl, #___str_14
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
;src/man/game.c:267: for (int c=0; c<numeroColumnas;c++){
	inc	de
	jp	00104$
00108$:
;src/man/game.c:265: for (int f=4; f<numeroFilas;f++){
	inc	bc
	jp	00107$
00109$:
;src/man/game.c:274: }
	ld	sp, ix
	pop	ix
	ret
___str_10:
	.ascii "%d"
	.db 0x00
___str_12:
	.db 0x0d
	.db 0x00
___str_13:
	.db 0x0d
	.db 0x0a
	.ascii "Fila %d"
	.db 0x0d
	.db 0x0a
	.ascii "  "
	.db 0x00
___str_14:
	.ascii "%d "
	.db 0x00
;src/man/game.c:275: void man_game_copiarSpritesVRAM(){
;	---------------------------------
; Function man_game_copiarSpritesVRAM
; ---------------------------------
_man_game_copiarSpritesVRAM::
	call	___sdcc_enter_ix
	push	af
	dec	sp
;src/man/game.c:278: for (char i=0; i<14; i++) {		
	ld	de, #0x0000
	ld	hl, #0x0000
	ex	(sp), hl
	xor	a, a
	ld	-1 (ix), a
00105$:
	ld	a, -1 (ix)
	sub	a, #0x0e
	jr	NC,00101$
;src/man/game.c:282: SetSpritePattern(sprite, &SPRITE_DATA[siguiente],32);
	ld	a, #<(_SPRITE_DATA)
	add	a, -3 (ix)
	ld	c, a
	ld	a, #>(_SPRITE_DATA)
	adc	a, -2 (ix)
	ld	b, a
	ld	h, e
	push	de
	ld	a, #0x20
	push	af
	inc	sp
	push	bc
	push	hl
	inc	sp
	call	_SetSpritePattern
	pop	af
	pop	af
	pop	de
;src/man/game.c:284: SC5SpriteColors(i, &COLOR_DATA[sprite]);
	ld	hl, #_COLOR_DATA
	add	hl, de
	ld	c, -1 (ix)
	ld	b, #0x00
	push	de
	push	hl
	push	bc
	call	_SC5SpriteColors
	pop	af
	pop	af
	pop	de
;src/man/game.c:286: sprite+=4;
	inc	de
	inc	de
	inc	de
	inc	de
;src/man/game.c:288: siguiente += 32;
	ld	a, -3 (ix)
	add	a, #0x20
	ld	-3 (ix), a
	jr	NC,00148$
	inc	-2 (ix)
00148$:
;src/man/game.c:278: for (char i=0; i<14; i++) {		
	inc	-1 (ix)
	jr	00105$
00101$:
;src/man/game.c:292: for (int i=enemy1_plane;i<object_money;i++){
	ld	bc, #0x0005
00108$:
	ld	a, c
	sub	a, #0x0f
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00102$
	inc	bc
	jr	00108$
00102$:
;src/man/game.c:296: for (int i=object_money;i<object_money+10;i++){
	ld	bc, #0x000f
00111$:
	ld	a, c
	sub	a, #0x19
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00113$
	inc	bc
	jr	00111$
00113$:
;src/man/game.c:303: }
	ld	sp, ix
	pop	ix
	ret
;src/man/game.c:305: void wait(){
;	---------------------------------
; Function wait
; ---------------------------------
_wait::
;src/man/game.c:310: __endasm;
	halt
	halt
	halt
;src/man/game.c:311: }
	ret
;src/man/game.c:312: void man_game_cargar_buffer_musica(){
;	---------------------------------
; Function man_game_cargar_buffer_musica
; ---------------------------------
_man_game_cargar_buffer_musica::
;src/man/game.c:313: enter_name_and_extension_in_structure( &TFileMusic, &fileNameSong[0]);
	ld	hl, #_fileNameSong
	push	hl
	ld	hl, #_TFileMusic
	push	hl
	call	_enter_name_and_extension_in_structure
	pop	af
;src/man/game.c:314: fcb_open( &TFileMusic );
	ld	hl, #_TFileMusic
	ex	(sp),hl
	call	_fcb_open
;src/man/game.c:315: fcb_read( &TFileMusic, &songBuffer[0], SONG_BUFFER_TAM );  
	ld	hl, #0x0108
	ex	(sp),hl
	ld	hl, #_songBuffer
	push	hl
	ld	hl, #_TFileMusic
	push	hl
	call	_fcb_read
	pop	af
	pop	af
;src/man/game.c:316: fcb_close( &TFileMusic );
	ld	hl, #_TFileMusic
	ex	(sp),hl
	call	_fcb_close
	pop	af
;src/man/game.c:317: }
	ret
;src/man/game.c:318: void man_game_reproducir_musica_y_efectos(){
;	---------------------------------
; Function man_game_reproducir_musica_y_efectos
; ---------------------------------
_man_game_reproducir_musica_y_efectos::
;src/man/game.c:320: DisableInterupt();
	di;	
;src/man/game.c:321: PT3Rout();
	call	_PT3Rout
;src/man/game.c:322: PT3Play();
	call	_PT3Play
;src/man/game.c:330: EnableInterupt();
	ei;	
;src/man/game.c:331: }
	ret
;src/man/game.c:333: void man_game_cargar_buffer_efectos_sonido(){
;	---------------------------------
; Function man_game_cargar_buffer_efectos_sonido
; ---------------------------------
_man_game_cargar_buffer_efectos_sonido::
;src/man/game.c:341: }
	ret
;src/man/game.c:343: void man_game_reproducir_efecto_sonido(char effect){
;	---------------------------------
; Function man_game_reproducir_efecto_sonido
; ---------------------------------
_man_game_reproducir_efecto_sonido::
;src/man/game.c:356: }
	ret
;src/man/game.c:358: void debug(){
;	---------------------------------
; Function debug
; ---------------------------------
_debug::
;src/man/game.c:364: TEntity *object=&array_objects[0];
	ld	bc, (_array_objects)
;src/man/game.c:365: BoxFill (0, 23*8, 256, 210, 6, LOGICAL_IMP );
	push	bc
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
	call	_sys_entity_get_num_objects
	pop	bc
	ld	h, #0x00
	push	bc
	ld	de, #0x000a
	push	de
	ld	de, #___str_15
	push	de
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
	pop	af
	inc	sp
	pop	bc
;src/man/game.c:367: PutText(50,200,Itoa(object->plane,"  ",10),8);
	ld	de, #___str_15
	ld	l, c
	ld	h, b
	ld	bc, #0x0011
	add	hl, bc
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
	ld	hl, #0x00c8
	push	hl
	ld	l, #0x32
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:368: PutText(100,200,Itoa(enabled_world_change,"  ",10),8);
	ld	de, #___str_15
	ld	hl,#_enabled_world_change + 0
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
	ld	hl, #0x00c8
	push	hl
	ld	l, #0x64
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:383: }
	ret
___str_15:
	.ascii "  "
	.db 0x00
;src/man/game.c:385: void pintar_HUD(){
;	---------------------------------
; Function pintar_HUD
; ---------------------------------
_pintar_HUD::
;src/man/game.c:387: BoxFill (0, 23*8, 256, 210, 4, LOGICAL_IMP );
	xor	a, a
	ld	d,a
	ld	e,#0x04
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
;src/man/game.c:389: HMMM(0,256+16,0,188,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xbc
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
;src/man/game.c:391: HMMM(2*8,256+16,40,188,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xbc
	push	hl
	ld	l, #0x28
	push	hl
	ld	hl, #0x0110
	push	hl
	ld	h, #0x00
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:393: HMMM(3*8,256,100,188,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xbc
	push	hl
	ld	l, #0x64
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x0018
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:394: PutText(20,192,Itoa(actual_world," ",10),8);
	ld	de, #___str_16
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
	ld	hl, #0x00c0
	push	hl
	ld	l, #0x14
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:395: PutText(60,192,Itoa(player->lives," ",10),8);
	ld	de, #___str_16
	ld	hl, (_player)
	ld	bc, #0x0014
	add	hl, bc
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
	ld	hl, #0x00c0
	push	hl
	ld	l, #0x3c
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:396: PutText(120,192,Itoa(player->points," ",10),8);
	ld	de, #___str_16
	ld	hl, (_player)
	ld	bc, #0x0012
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
	ld	hl, #0x00c0
	push	hl
	ld	l, #0x78
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:397: PutText(140,192,"Need:",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_17
	push	hl
	ld	hl, #0x00c0
	push	hl
	ld	l, #0x8c
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:398: PutText(180,192,Itoa(world_money,"  ",10),8);
	ld	de, #___str_18+0
	ld	hl,#_world_money + 0
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
	ld	hl, #0x00c0
	push	hl
	ld	l, #0xb4
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:401: }
	ret
___str_16:
	.ascii " "
	.db 0x00
___str_17:
	.ascii "Need:"
	.db 0x00
___str_18:
	.ascii "  "
	.db 0x00
;watchmen.c:4: void main(void) 
;	---------------------------------
; Function main
; ---------------------------------
_main::
;watchmen.c:6: man_game_init();
	call	_man_game_init
;watchmen.c:7: man_game_play();
;watchmen.c:8: }
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
	.db #0x02	; 2
	.db #0x1c	; 28
	.db #0x7a	; 122	'z'
	.db #0x78	; 120	'x'
	.db #0x7e	; 126
	.db #0x3e	; 62
	.db #0x38	; 56	'8'
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x2c	; 44
	.db #0x27	; 39
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x80	; 128
	.db #0x18	; 24
	.db #0xbe	; 190
	.db #0x1e	; 30
	.db #0xae	; 174
	.db #0xac	; 172
	.db #0x1a	; 26
	.db #0xb6	; 182
	.db #0x0a	; 10
	.db #0x1a	; 26
	.db #0xe4	; 228
	.db #0x08	; 8
	.db #0x34	; 52	'4'
	.db #0xec	; 236
	.db #0x18	; 24
	.db #0xf0	; 240
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
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
__xinit__COLOR_DATA_ENEMY:
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
__xinit__COLOR_DATA_MONEY:
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
__xinit__world_enemies:
	.dw #0x0050
	.dw #0x0018
	.db #0x02	; 2
	.dw #0x0020
	.dw #0x0018
	.db #0x02	; 2
	.dw #0x0030
	.dw #0x0048
	.db #0x02	; 2
	.dw #0x00a0
	.dw #0x0078
	.db #0x02	; 2
	.dw #0x0050
	.dw #0x00a0
	.db #0x02	; 2
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.dw #0x0040
	.dw #0x0008
	.db #0x02	; 2
	.dw #0x0028
	.dw #0x0028
	.db #0x02	; 2
	.dw #0x00c8
	.dw #0x0050
	.db #0x02	; 2
	.dw #0x00c8
	.dw #0x0078
	.db #0x02	; 2
	.dw #0x0050
	.dw #0x00a0
	.db #0x02	; 2
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__world_objects:
	.dw #0x0028
	.dw #0x0018
	.db #0x16	; 22
	.dw #0x0070
	.dw #0x0018
	.db #0x16	; 22
	.dw #0x0008
	.dw #0x0048
	.db #0x16	; 22
	.dw #0x00f0
	.dw #0x0048
	.db #0x16	; 22
	.dw #0x0008
	.dw #0x0078
	.db #0x16	; 22
	.dw #0x00f0
	.dw #0x00a0
	.db #0x16	; 22
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.dw #0x00e0
	.dw #0x0008
	.db #0x16	; 22
	.dw #0x0078
	.dw #0x0028
	.db #0x16	; 22
	.dw #0x00a0
	.dw #0x0020
	.db #0x32	; 50	'2'
	.dw #0x0018
	.dw #0x0060
	.db #0x16	; 22
	.dw #0x0018
	.dw #0x0070
	.db #0x16	; 22
	.dw #0x00d0
	.dw #0x00a0
	.db #0x16	; 22
	.dw #0x0018
	.dw #0x00a0
	.db #0x16	; 22
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__fileNameSongEffects:
	.ascii "effects.afb"
	.db 0x00
__xinit__fileNameSong:
	.ascii "song1.pt3"
	.db 0x00
	.area _CABS (ABS)
