//
//  Board.h
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//
#import "Square.h"
#import "Player.h"
#import "King.h"
#import "Queen.h"
#import "Rook.h"
#import "Bishop.h"
#import "Knight.h"
#import "Pawn.h"
#import "Piece.h"
#import "Tools.h"

@class Move;

NSDictionary *traduction;

@interface Board : NSObject <NSCopying> {
    
}
@property NSMutableArray *squares;
@property Player *white;
@property Player *black;
@property int movecount;
@property NSDictionary *traduction;
+(Board*)new;
-(void)print;
-(Square*)Squares:(SQUARE*)location;
-(void)removePiece:(SQUARE*)location;
-(BOOL)isLegalWithPiece:(Piece*)s andX:(int)x andY:(int)y;
-(Move*)moveWithPiece1:(Piece*)s andX:(int)x andY:(int)y andCastling:(BOOL)castling;
-(void)makeMoveWithPiece:(Piece*)s andX:(int)x andY:(int)y;
-(Move*)findMove:(Player*)s andColor:(Color)k;
-(int)findValue:(Player*)s andColor:(Color)k andNumber:(int)n;
-(BOOL)checkWithColor:(Color)k;

@end
