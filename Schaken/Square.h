
//  Square.h
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Color.h"
@class Piece;
@interface Square : NSObject <NSCopying>
@property id piece;
@property Color color;
@property int x;
@property int y;
@end
