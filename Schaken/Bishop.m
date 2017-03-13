//
//  Bishop.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Bishop.h"
#import "Board.h"

@implementation Bishop
-(NSMutableArray*)movesWithBoard:(Board*)board {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (int x1 = self.x+1,y1 = self.y+1;x1 < 8;x1++,y1++) {
        if (y1 >= 8) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == EMPTY) {
            [result addObject:(board.squares[x1][y1])];
        } else {
            [result addObject:(board.squares[x1][y1])];
            break;
        }
    }
    for (int x1 = self.x+1,y1 = self.y-1;x1 < 8;x1++,y1--) {
        if (y1 < 0) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == EMPTY) {
            [result addObject:(board.squares[x1][y1])];
        } else {
            [result addObject:(board.squares[x1][y1])];
            break;
        }
    }
    for (int x1 = self.x-1,y1 = self.y+1;x1 >= 0;x1--,y1++) {
        if (y1 >= 8) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == EMPTY) {
            [result addObject:(board.squares[x1][y1])];
        } else {
            [result addObject:(board.squares[x1][y1])];
            break;
        }
    }
    for (int x1 = self.x-1,y1 = self.y-1;x1 >= 0;x1--,y1--) {
        if (y1 < 0) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == EMPTY) {
            [result addObject:(board.squares[x1][y1])];
        } else {
            [result addObject:(board.squares[x1][y1])];
            break;
        }
    }
    return result;
}
@end
