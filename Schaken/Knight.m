//
//  Knight.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Knight.h"
#import "Board.h"

@implementation Knight
-(NSMutableArray*)movesWithBoard:(Board*)board {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    if ([board Squares:MAKESQUARE(self.x+2,self.y+1)].color != self.color && [board Squares:MAKESQUARE(self.x+2,self.y+1)] != nil) {
            [result addObject:(board.squares[self.x+2][self.y+1])];
        }
        if (([board Squares:MAKESQUARE(self.x+2,self.y-1) ]).color != self.color && ([board Squares:MAKESQUARE(self.x+2,self.y-1) ]) != nil) {
            [result addObject:(board.squares[self.x+2][self.y-1])];
        }
        if (([board Squares:MAKESQUARE(self.x-2,self.y+1) ]).color != self.color && ([board Squares:MAKESQUARE(self.x-2,self.y+1) ]) != nil) {
            [result addObject:(board.squares[self.x-2][self.y+1])];
        }
        if (([board Squares:MAKESQUARE(self.x-2,self.y-1) ]).color != self.color && [board Squares:MAKESQUARE(self.x-2,self.y-1) ] != nil) {
            [result addObject:(board.squares[self.x-2][self.y-1])];
        }
        if (([board Squares:MAKESQUARE(self.x+1,self.y+2) ]).color != self.color && [board Squares:MAKESQUARE(self.x+1,self.y+2) ] != nil) {
            [result addObject:(board.squares[self.x+1][self.y+2])];
        }
        if (([board Squares:MAKESQUARE(self.x+1,self.y-2) ]).color != self.color && [board Squares:MAKESQUARE(self.x+1,self.y-2) ] != nil) {
            [result addObject:(board.squares[self.x+1][self.y-2])];
        }
        if (([board Squares:MAKESQUARE(self.x-1,self.y+2) ]).color != self.color && [board Squares:MAKESQUARE(self.x-1,self.y+2) ] != nil) {
            [result addObject:(board.squares[self.x-1][self.y+2])];
        }
        if (([board Squares:MAKESQUARE(self.x-1,self.y-2) ]).color != self.color && [board Squares:MAKESQUARE(self.x-1,self.y-2) ] != nil) {
            [result addObject:(board.squares[self.x-1][self.y-2])];
        }
    return result;
}
@end
