#pragma once
#include "src/man/entity.c"
//Para el buffer
#include "src/man/files.c"

/**************DECLARACIONES************/
void sys_collider_init();

int sys_collider_get_file_entity(TEntity *entity);
int sys_collider_get_column_entity(TEntity *entity);
int sys_collider_get_tile_array(TEntity *entity);
int sys_collider_get_tile_down_array(TEntity *entity);
int sys_collider_get_tile_right_array(TEntity *entity);
int sys_collider_get_tile_left_array(TEntity *entity);

unsigned char* bufferDir;
/********FINAL DE DECLARAIONES***********/



/**************DEFINICIONES************/
void sys_collider_init(){
    bufferDir=getBuffer();
}

int sys_collider_get_column_entity(TEntity *entity){
  //Será la posición en x/8 pixeles el tile
  //int tile_column=(entity->x/8);
  return (entity->x/8);
}
int sys_collider_get_file_entity(TEntity *entity){
  //Será la posición y / 8 pixeles
  //int tile_file=(entity->y/8);
  return (entity->y/8);
}
int sys_collider_get_tile_array(TEntity *entity){
  //Le sumamos 1 a la fila porque es un sprite de 16*16px, para ver el tile del pié
  int tile_pie=buffer[((sys_collider_get_file_entity(entity)+1)*32)+(sys_collider_get_column_entity(entity))];
  return tile_pie;
}
int sys_collider_get_tile_down_array(TEntity *entity){
  //Le sumamos 2 a la fila porque es un sprite de 16*16px, para ver el tile del suelo
  int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+2)*32)+(sys_collider_get_column_entity(entity))];
  return tile_abajo; 
}
int sys_collider_get_tile_right_array(TEntity *entity){
  //Le sumamos 2 a la fila porque es un sprite de 16*16px, para ver el tile del suelo
  int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+1)*32)+(sys_collider_get_column_entity(entity)-1)];
  return tile_abajo; 
}
int sys_collider_get_tile_left_array(TEntity *entity){
  //Le sumamos 2 a la fila porque es un sprite de 16*16px, para ver el tile del suelo
  int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+2)*32)+(sys_collider_get_column_entity(entity)+2)];
  return tile_abajo; 
}