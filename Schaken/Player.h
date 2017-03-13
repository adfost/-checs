//
//  Player.h
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Color.h"
@class King;
@class Queen;
@class Rook;
@class Bishop;
@class Knight;
@class Pawn;
@class Piece;

@interface Player : NSObject <NSCopying> {
    
}
@property NSMutableArray *pieces;
@property (readonly) Piece *king;
@property (readonly) int value;
@property BOOL computer;
+(Player*)newWithColor:(Color)k;
-(id)copyWithZone:(NSZone *)zone;

@end
