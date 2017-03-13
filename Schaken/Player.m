//
//  Player.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Player.h"
#import "King.h"
#import "Queen.h"
#import "Rook.h"
#import "Bishop.h"
#import "Knight.h"
#import "Pawn.h"
#import "Piece.h"

@implementation Player
@synthesize pieces;
@synthesize computer;
+(Player*)newWithColor:(Color)k {
    Player* a = [[Player alloc] init];
    a.pieces = [NSMutableArray arrayWithArray:@[[King new],[Queen new],[Rook new],[Rook new],[Bishop new],[Bishop new],[Knight new],[Knight new],[Pawn new],[Pawn new],[Pawn new],[Pawn new],[Pawn new],[Pawn new],[Pawn new],[Pawn new]]];
    for (Piece* s in a.pieces) {
        s.moved = NO;
    }
    return a;
}
-(Piece*)king {
    for (Piece *s in self.pieces) {
        if ([s isKindOfClass:[King class]]) {
            return s;
        }
    }
    return nil;
}
-(id)copyWithZone:(NSZone *)zone {
    Player* r = [[Player alloc] init];
    r.pieces = [NSMutableArray array];
    for (int i = 0;i < self.pieces.count;i++) {
        [r.pieces addObject:self.pieces[i]];
    }
    return r;
}

-(int)value {
    int i = 0;
    for (Piece* s in pieces) {
        if ([s isKindOfClass:[Queen class]]) {
            i += 9;
        } else if ([s isKindOfClass:[Rook class]]) {
            i += 5;
        } else if ([s isKindOfClass:[Bishop class]]) {
            i += 3;
        } else if ([s isKindOfClass:[Knight class]]) {
            i += 3;
        } else if ([s isKindOfClass:[Pawn class]]) {
            i += 1;
        }
    }
    return i;
}

@end
