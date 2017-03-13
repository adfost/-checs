//
//  Tools.h
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

typedef struct {
    int x;
    int y;
} SQUARE;
typedef struct {
    int x1;
    int y1;
    int x2;
    int y2;
    char piece;
} MOVE;

SQUARE* MAKESQUARE(int x1, int y1);
MOVE* readString(char *s);