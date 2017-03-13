//
//  Move.h
//  Schakand
//
//  Created by Adam Stafford on 05-05-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Piece.h"
#import "Board.h"

@interface Move : NSObject
@property Piece *s;
@property Board *b;
@property BOOL isCastling;
+(Move*)newWithBoard:(Board*)b1 andPiece:(Piece*)s1;
@end
