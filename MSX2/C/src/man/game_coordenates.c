#pragma once
#include "src/man/entity.c"
#include "src/man/sprites.c"


typedef struct TCoordinate_enemy TCoordinate_enemy;
struct TCoordinate_enemy{
    unsigned int x;
    unsigned int y;
    unsigned char type;
}; 


TCoordinate_enemy world_enemies[][MAX_enemies]={
    {//wolrd 0
        { //coordinate_enemy 0
          10*8,
          3*8,
          entity_type_enemy1
        },
        { //coordinate_enemy 1
          4*8,
          3*8,
          entity_type_enemy1
        },
        { //coordinate_enemy 2
          6*8,
          9*8,
          entity_type_enemy1
        },
        { //coordinate_enemy 3
          20*8,
          15*8,
          entity_type_enemy1
        },
        { //coordinate_enemy 4
          10*8,
          20*8,
          entity_type_enemy1
        }
  },




  {//world 1
    { //coordinate_enemy 0
      8*8,
      1*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 1
      5*8,
      5*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 2
      25*8,
      10*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 3
      25*8,
      15*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 4
      10*8,
      20*8,
      entity_type_enemy1
    }
  }
};























typedef struct TCoordinate_object TCoordinate_object;
struct TCoordinate_object{
    unsigned int x;
    unsigned int y;
    unsigned char type;
}; 
TCoordinate_object world_objects[][MAX_objects]={
    {//wolrd 0, las filas son 3,9,15,20
        { //coordinate_object 0
          5*8,
          3*8,
          entity_type_object_money
        },
        { //coordinate_object 1
          14*8,
          3*8,
          entity_type_object_money
        },
        { //coordinate_object 2
          1*8,
          9*8,
          entity_type_object_money
        },
        { //coordinate_object 3
          30*8,
          9*8,
          entity_type_object_money
        },
        { //coordinate_object 4
          1*8,
          15*8,
          entity_type_object_money
        },
        { //coordinate_object 5
          30*8,
          20*8,
          entity_type_object_money
        }
  },



  {//world 1
    { //coordinate_object 0
      28*8,
      1*8,
      entity_type_object_money
    },
    {//coordinate_object 1
      15*8,
      5*8,
      entity_type_object_money
    },
    { //coordinate_object 2
      20*8,
      4*8,
      entity_type_object_batery
    },
    { //coordinate_object 3
      3*8,
      12*8,
      entity_type_object_money
    },
    { //coordinate_object 4
      3*8,
      14*8,
      entity_type_object_money
    },
    { //coordinate_object 5
      26*8,
      20*8,
      entity_type_object_money
    },
    { //coordinate_object 6
      3*8,
      20*8,
      entity_type_object_money
    }
  }
};
