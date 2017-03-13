//
//  Move.m
//  Schakand
//
//  Created by Adam Stafford on 05-05-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import "Move.h"

@implementation Move
@synthesize s;
@synthesize b;
@synthesize isCastling;
+(Move*)newWithBoard:(Board *)b1 andPiece:(Piece *)s1 {
    Move *a = [[Move alloc] init];
    a.b = b1;
    a.s = s1;
    return a;
}
@end
