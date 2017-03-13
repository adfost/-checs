//
//  Piece.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Piece.h"

@implementation Piece
@synthesize x;
@synthesize y;
@synthesize X2;
@synthesize Y2;
@synthesize color;
@synthesize moved;
@synthesize moved2;

-(id)copyWithZone:(NSZone *)zone {
    Piece *r = [[[self class] alloc] init];
    r.x = self.x;
    r.y = self.y;
    r.color = self.color;
    r.moved = self.moved;
    return r;
}
@end
