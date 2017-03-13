//
//  Pawn.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Pawn.h"
#import "Board.h"
#import "Piece.h"

@implementation Pawn
-(NSMutableArray*)movesWithBoard:(Board*)board {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    if (self.color == WHITE) {
        if (([board Squares:MAKESQUARE(self.x,self.y+1)]).color == EMPTY) {
            [result addObject:(board.squares[self.x][self.y+1])];
        }
        if (self.y == 1 && ([board Squares:MAKESQUARE(self.x,self.y+2)]).color == EMPTY && ([board Squares:MAKESQUARE(self.x,self.y+1)]).color == EMPTY) {
            [result addObject:(board.squares[self.x][self.y+2])];
        }
        if (([board Squares:MAKESQUARE(self.x-1,self.y+1)]).color == BLACK) {
            [result addObject:(board.squares[self.x-1][self.y+1])];
        }
        if (([board Squares:MAKESQUARE(self.x+1,self.y+1)]).color == BLACK) {
            [result addObject:(board.squares[self.x+1][self.y+1])];
        }
    } else if (self.color == BLACK) {
        if (([board Squares:MAKESQUARE(self.x,self.y-1)]).color == EMPTY) {
            [result addObject:(board.squares[self.x][self.y-1])];
        }
        if (self.y == 6 && ([board Squares:MAKESQUARE(self.x,self.y-2)]).color == EMPTY && ([board Squares:MAKESQUARE(self.x,self.y-1)]).color == EMPTY) {
            [result addObject:(board.squares[self.x][self.y-2])];
        }
        if (([board Squares:MAKESQUARE(self.x-1,self.y-1)]).color == WHITE) {
            [result addObject:(board.squares[self.x-1][self.y-1])];
        }
        if (([board Squares:MAKESQUARE(self.x+1,self.y-1)]).color == WHITE) {
            [result addObject:(board.squares[self.x+1][self.y-1])];
        }
    }
    return result;
}
@end
