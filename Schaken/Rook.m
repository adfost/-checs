//
//  Rook.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Rook.h"
#import "Board.h"

@implementation Rook
-(NSMutableArray*)movesWithBoard:(Board*)board {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (int x1 = self.x+1;x1 < 8;x1++) {
        if ([board Squares:MAKESQUARE(x1,self.y)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,self.y)].color == EMPTY) {
            [result addObject:(board.squares[x1][self.y])];
        } else {
            [result addObject:(board.squares[x1][self.y])];
            break;
        }
    }
    for (int y1 = self.y+1;y1 < 8;y1++) {
        if ([board Squares:MAKESQUARE(self.x,y1)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(self.x,y1)].color == EMPTY) {
            [result addObject:(board.squares[self.x][y1])];
        } else {
            [result addObject:(board.squares[self.x][y1])];
            break;
        }
    }
    for (int x1 = self.x-1;x1 >= 0;x1--) {
        if ([board Squares:MAKESQUARE(x1,self.y)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,self.y)].color == EMPTY) {
            [result addObject:(board.squares[x1][self.y])];
        } else {
            [result addObject:(board.squares[x1][self.y])];
            break;
        }
    }
    for (int y1 = self.y-1;y1 >= 0;y1--) {
        if ([board Squares:MAKESQUARE(self.x,y1)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(self.x,y1)].color == EMPTY) {
            [result addObject:(board.squares[self.x][y1])];
        } else {
            [result addObject:(board.squares[self.x][y1])];
            break;
        }
    }
    return result;
}
@end
