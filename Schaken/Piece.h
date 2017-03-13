//
//  Piece.h
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Color.h"
@class Board;

@interface Piece : NSObject <NSCopying>
@property int x,y;
@property int X2,Y2;
@property Color color;
@property BOOL moved;
@property BOOL moved2;
-(NSMutableArray*)movesWithBoard:(Board*)board;
@end
