//
//  Tools.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tools.h"

SQUARE* MAKESQUARE(int x1, int y1) {
    SQUARE *a = malloc(sizeof(SQUARE));
    a->x = x1;
    a->y = y1;
    return a;
}

MOVE* readString(char *s) {
    MOVE* result = malloc(sizeof(MOVE));
    if (strlen(s) != 5 && strlen(s) != 6) {
        return nil;
    } else if (strlen(s) == 6) {
        result->x1 = *s - 'a';
        result->y1 = *(s+1) - '1';
        result->x2 = *(s+3) - 'a';
        result->y2 = *(s+4) - '1';
        result->piece = *(s+5);
    } else {
        result->x1 = *s - 'a';
        result->y1 = *(s+1) - '1';
        result->x2 = *(s+3) - 'a';
        result->y2 = *(s+4) - '1';
        result->piece = 0;
    }
    return result;
}
