//
//  Square.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Square.h"
#import "Piece.h"
static int x2 = 0;
static int y2 = 0;
@implementation Square
@synthesize piece;
@synthesize color;
@synthesize x;
@synthesize y;
-(Square*)init {
    self.piece = nil;
    self.color = EMPTY;
    self.x = x2;
    self.y = y2;
    y2++;
    if (y2 == 8) {
        y2 = 0;
        x2++;
    }
    if (x2 == 8) {
        x2 = 0;
        y2 = 0;
    }
    return self;
}
-(id)copyWithZone:(NSZone *)zone {
    Square *v = [[Square alloc] init];
    v.piece = [self.piece copy];
    v.color = self.color;
    v.x = self.x;
    v.y = self.y;
    return v;
}
@end
