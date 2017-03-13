//
//  Knight.h
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Piece.h"
@class Board;

@interface Knight : Piece
-(NSMutableArray*)movesWithBoard:(Board*)board;
@end
