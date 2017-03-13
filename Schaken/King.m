//
//  King.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "King.h"
#import "Board.h"

@implementation King
-(NSMutableArray*)movesWithBoard:(Board *)board {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (int x1 = self.x+1;x1 < 8;x1++) {
        if ([board Squares:MAKESQUARE(x1,self.y)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,self.y)].color == EMPTY) {
            [result addObject:(board.squares[x1][self.y])];
            break;
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
            break;
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
            break;
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
            break;
        } else {
            [result addObject:(board.squares[self.x][y1])];
            break;
        }
    }
    for (int x1 = self.x+1,y1 = self.y+1;x1 < 8;x1++,y1++) {
        if (y1 >= 8) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == self.color) {
            break;
        } else if ([board Squares:MAKESQUARE(x1,y1)].color == EMPTY) {
            [result addObject:(board.squares[x1][y1])];
            break;
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
            break;
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
            break;
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
            break;
        } else {
            [result addObject:(board.squares[x1][y1])];
            break;
        }
    }
    if (self.moved == NO) {
        if (self.color == WHITE) {
            for (Piece* s in board.white.pieces) {
                if ([s isMemberOfClass:[Rook class]] && s.moved == NO) {
                    int x3 = self.x+2*abs(s.x-self.x)/(s.x-self.x);
                    if ([board.squares[x3][self.y] color] == EMPTY && [board.squares[(x3+self.x)/2][self.y] color] == EMPTY) {
                        if (abs(s.x-self.x) == 4) {
                            if ([board.squares[s.x+1][self.y] color] == EMPTY) {
                                [result addObject:board.squares[x3][self.y]];
                            }

                        } else {
                            [result addObject:board.squares[x3][self.y]];
                        }
                    }
                }
            }
        } else {
            for (Piece* s in board.black.pieces) {
                if ([s isMemberOfClass:[Rook class]] && s.moved == NO) {
                    int x3 = self.x+2*abs(s.x-self.x)/(s.x-self.x);
                    if ([board.squares[x3][self.y] color] == EMPTY && [board.squares[(x3+self.x)/2][self.y] color] == EMPTY) {
                        if (abs(s.x-self.x) == 4) {
                            if ([board.squares[s.x+1][self.y] color] == EMPTY) {
                                [result addObject:board.squares[x3][self.y]];
                            }
                            
                        } else {
                            [result addObject:board.squares[x3][self.y]];
                        }
                    }
                }
            }
        }
    }
    return result;
}
@end
