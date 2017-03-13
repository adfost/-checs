//
//  Board.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Board.h"
#import "Move.h"
#undef INT_MIN
#define INT_MIN -10000
#undef INT_MAX
#define INT_MAX 10000

@implementation Board
@synthesize squares;
@synthesize white;
@synthesize black;
@synthesize movecount;
+(Board*)new {
    Player *white1 = [Player newWithColor:WHITE];
    Player *black1 = [Player newWithColor:BLACK];
    Board *a = [[Board alloc] init];
    traduction = @{@"King": @"Roi", @"Queen": @"Dame", @"Rook": @"Tour", @"Bishop": @"Fou", @"Knight": @"Cavalier", @"Pawn": @"Pion"};
    a.squares = [NSMutableArray arrayWithArray:@[[NSMutableArray arrayWithArray:@[[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init]]],
  [NSMutableArray arrayWithArray:@[[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init]]],
  [NSMutableArray arrayWithArray:@[[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init]]],
  [NSMutableArray arrayWithArray:@[[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init]]],
  [NSMutableArray arrayWithArray:@[[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init]]],
  [NSMutableArray arrayWithArray:@[[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init]]],
  [NSMutableArray arrayWithArray:@[[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init]]],
  [NSMutableArray arrayWithArray:@[[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init],[[Square alloc] init]]]]];
    int t = 0;
    int l = 0;
    int pa = 0;
    int pi = 0;
    for (Piece *s in white1.pieces) {
        if ([s isMemberOfClass:[King class]]) {
            s.x = 4;
            s.y = 0;
            s.color = WHITE;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = WHITE;
        } else if ([s isMemberOfClass:[Queen class]]) {
            s.x = 3;
            s.y = 0;
            s.color = WHITE;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = WHITE;
        } else if ([s isMemberOfClass:[Rook class]]) {
            s.x = 0+7*t;
            s.y = 0;
            s.color = WHITE;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = WHITE;
            t++;
        } else if ([s isMemberOfClass:[Bishop class]]) {
            s.x = 2+3*l;
            s.y = 0;
            s.color = WHITE;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = WHITE;
            l++;
        } else if ([s isMemberOfClass:[Knight class]]) {
            s.x = 1+5*pa;
            s.y = 0;
            s.color = WHITE;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = WHITE;
            pa++;
        } else if ([s isMemberOfClass:[Pawn class]]) {
            s.x = 0+pi;
            s.y = 1;
            s.color = WHITE;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = WHITE;
            pi++;
        }
    }
    t = 0;
    l = 0;
    pa = 0;
    pi = 0;
    for (Piece *s in black1.pieces) {
        if ([s isMemberOfClass:[King class]]) {
            s.x = 4;
            s.y = 7;
            s.color = BLACK;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = BLACK;
        } else if ([s isMemberOfClass:[Queen class]]) {
            s.x = 3;
            s.y = 7;
            s.color = BLACK;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = BLACK;
        } else if ([s isMemberOfClass:[Rook class]]) {
            s.x = 0+7*t;
            s.y = 7;
            s.color = BLACK;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = BLACK;
            t++;
        } else if ([s isMemberOfClass:[Bishop class]]) {
            s.x = 2+3*l;
            s.y = 7;
            s.color = BLACK;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = BLACK;
            l++;
        } else if ([s isMemberOfClass:[Knight class]]) {
            s.x = 1+5*pa;
            s.y = 7;
            s.color = BLACK;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = BLACK;
            pa++;
        } else if ([s isMemberOfClass:[Pawn class]]) {
            s.x = 0+pi;
            s.y = 6;
            s.color = BLACK;
            ((Square*)a.squares[s.x][s.y]).piece = s;
            ((Square*)a.squares[s.x][s.y]).color = BLACK;
            pi++;
        }
    }
    a.white = white1;
    a.black = black1;
    a.movecount = 0;
    return a;
}
-(void)print {
    for (int j = 7;j >= 0;j--) {
        for (int i = 0;i < 8;i++) {
            if ([((Square*)(self.squares[i][j])).piece isMemberOfClass:[King class]]) {
                printf("R");
            } else if ([((Square*)(self.squares[i][j])).piece isMemberOfClass:[Queen class]]) {
                printf("D");
            } else if ([((Square*)(self.squares[i][j])).piece isMemberOfClass:[Rook class]]) {
                printf("T");
            } else if ([((Square*)(self.squares[i][j])).piece isMemberOfClass:[Bishop class]]) {
                printf("F");
            } else if ([((Square*)(self.squares[i][j])).piece isMemberOfClass:[Knight class]]) {
                printf("C");
            } else if ([((Square*)(self.squares[i][j])).piece isMemberOfClass:[Pawn class]]) {
                printf("p");
            } else {
                printf("X");
            }
            if (((Square*)(self.squares[i][j])).color == WHITE) {
                printf("B");
            } else if (((Square*)(self.squares[i][j])).color == BLACK) {
                printf("N");
            } else {
                printf("X");
            }
            printf(" ");
        }
        printf("\n");
    }
}
-(Square*)Squares:(SQUARE*)location {
    if (location->x >= 0 && location->x <= 7 && location->y >= 0 && location->y <= 7) {
        return self.squares[location->x][location->y];
    } else {
        return nil;
    }
}
-(void)removePiece:(SQUARE*)location {
    int x = location->x;
    int y = location->y;
    if ([self.squares[x][y] piece] == nil) {
        return;
    } else {
        if ([[self.squares[x][y] piece] color] == WHITE) {
            for (int i = 0;i < self.white.pieces.count;i++) {
                if (self.white.pieces[i] == [self.squares[x][y] piece]) {
                    [self.white.pieces removeObjectAtIndex:i];
                }
            }
            [self.squares[x][y] setColor:EMPTY];
            [self.squares[x][y] setPiece:nil];
        } if ([[self.squares[x][y] piece] color] == BLACK) {
            for (int i = 0;i < self.black.pieces.count;i++) {
                if (self.black.pieces[i] == [self.squares[x][y] piece]) {
                    [self.black.pieces removeObjectAtIndex:i];
                }
            }
            [self.squares[x][y] setColor:EMPTY];
            [self.squares[x][y] setPiece:nil];
        }
    }
}
-(BOOL)isLegalWithPiece:(Piece *)s andX:(int)x andY:(int)y {
    if ([s isMemberOfClass:[King class]] && abs(s.x-x) == 2) {
        if ([self checkWithColor:s.color]) {
            return FALSE;
        }
        Move *z1 = [self moveWithPiece1:s andX:(x+s.x)/2 andY:y andCastling:NO];
        if ([z1.b checkWithColor:z1.s.color]) {
            return FALSE;
        }
    }
    for (Square *v in [s movesWithBoard:self]) {
        if (v.x == x && v.y == y) {
                Move *z = [self moveWithPiece1:s andX:x andY:y andCastling:NO];
                if (s.color == WHITE) {
                    for (int i = 0;i < z.b.black.pieces.count;i++) {
                        for (Square *v2 in [z.b.black.pieces[i] movesWithBoard:z.b]) {
                            if (v2.x == z.b.white.king.x && v2.y == z.b.white.king.y) {
                                return FALSE;
                            }
                        }
                    }
                    return TRUE;
                } else {
                    for (int i = 0;i < z.b.white.pieces.count;i++) {
                        for (Square *v2 in [z.b.white.pieces[i] movesWithBoard:z.b]) {
                            if (v2.x == z.b.black.king.x && v2.y == z.b.black.king.y) {
                                return FALSE;
                            }
                        }
                    }
                    return TRUE;
                }
        }
    }
    return FALSE;
}
-(Move*)moveWithPiece1:(Piece*)s andX:(int)x andY:(int)y andCastling:(BOOL)castling {
    Board *b = [self copy];
    Piece *s2 = [s copy];
    [b removePiece:MAKESQUARE(x,y)];
    [b.squares[x][y] setColor:s2.color];
    [b.squares[x][y] setPiece:s2];
    [b removePiece:MAKESQUARE(s2.x,s2.y)];
    s2.X2 = s.x;
    s2.Y2 = s.y;
    s2.x = x;
    s2.y = y;
    s2.moved2 = s2.moved;
    s2.moved = YES;
    if ([s isMemberOfClass:[King class]] && abs(s2.X2-x) == 2) {
        if (s2.color == WHITE) {
            [b.white.pieces addObject:s2];
        } else if (s2.color == BLACK) {
            [b.black.pieces addObject:s2];
        }
        if (x > s2.X2) {
            return [b moveWithPiece1:[b.squares[x+1][y] piece] andX:x-1 andY:y andCastling:YES];
        } else {
            return [b moveWithPiece1:[b.squares[x-2][y] piece] andX:x+1 andY:y andCastling:YES];
        }
    }
    if ([s isMemberOfClass:[Pawn class]] && (s2.y == 7 || s2.y == 0)) {
        Queen *s3 = [[Queen alloc] init];
        s3.x = s2.x;
        s3.y = s2.y;
        s3.X2 = s2.X2;
        s3.Y2 = s2.Y2;
        s3.color = s2.color;
        s3.moved = YES;
        [b removePiece:MAKESQUARE(s2.x,s2.y)];
        if (s3.color == WHITE) {
            [b.white.pieces addObject:s3];
            [b.squares[x][y] setPiece:s3];
            [b.squares[x][y] setColor:WHITE];
        } else if (s3.color == BLACK) {
            [b.black.pieces addObject:s3];
            [b.white.pieces addObject:s3];
            [b.squares[x][y] setPiece:s3];
            [b.squares[x][y] setColor:BLACK];
        }
    }
    else {
    if (s2.color == WHITE) {
        [b.white.pieces addObject:s2];
    } else if (s2.color == BLACK) {
        [b.black.pieces addObject:s2];
    }
    }
    Move* result;
    if (!castling) {
         result = [Move newWithBoard:b andPiece:s2];
    } else {
        if (s2.color == WHITE) {
            result = [Move newWithBoard:b andPiece:b.white.king];
        } else {
            result = [Move newWithBoard:b andPiece:b.black.king];
        }
    }
    result.isCastling = castling;
    result.b.movecount = self.movecount+1;
    return result;
}
-(void)makeMoveWithPiece:(Piece *)s andX:(int)x andY:(int)y {
    int x3 = s.x;
    [self removePiece:MAKESQUARE(x,y)];
    [self.squares[x][y] setColor:s.color];
    [self.squares[x][y] setPiece:s];
    [self.squares[s.x][s.y] setColor:EMPTY];
    [self.squares[s.x][s.y] setPiece:nil];
    s.X2 = x;
    s.Y2 = y;
    s.x = x;
    s.y = y;
    s.moved = YES;
    if ([s isMemberOfClass:[King class]] && abs(x3-x) == 2) {
        if (x > x3) {
            [self makeMoveWithPiece:[self.squares[x+1][y] piece] andX:x-1 andY:y];
            return;
        } else {
            [self makeMoveWithPiece:[self.squares[x-2][y] piece] andX:x+1 andY:y];
            return;
        }
    }
    if ([s isMemberOfClass:[Pawn class]] && (s.y == 7 || s.y == 0)) {
        Queen *s3 = [[Queen alloc] init];
        s3.x = s.x;
        s3.y = s.y;
        s3.X2 = s.X2;
        s3.Y2 = s.Y2;
        s3.color = s.color;
        s3.moved = YES;
        [self removePiece:MAKESQUARE(s.x,s.y)];
        if (s3.color == WHITE) {
            [self.white.pieces addObject:s3];
            [self.squares[x][y] setPiece:s3];
            [self.squares[x][y] setColor:WHITE];
        } else if (s3.color == BLACK) {
            [self.black.pieces addObject:s3];
            [self.squares[x][y] setPiece:s3];
            [self.squares[x][y] setColor:BLACK];
        }
    }
    movecount++;
}
-(id)copyWithZone:(NSZone *)zone {
    Board *b = [Board new];
    for (int i = 0;i < 8;i++) {
        for (int j = 0;j < 8;j++) {
            b.squares[i][j] = [self.squares[i][j] copy];
        }
    }
    b.white = [self.white copy];
    b.black = [self.black copy];
    b.movecount = self.movecount;
    for (Piece *s in b.white.pieces) {
        [b.squares[s.x][s.y] setPiece:s];
    }
    for (Piece *s in b.black.pieces) {
        [b.squares[s.x][s.y] setPiece:s];
    }
    return b;
}
-(Move*)findMove:(Player *)sp andColor:(Color)k {
    int numberOfMoves = 0;
    int best = INT_MIN;
    Move* z;
    Move* bestZ;
    int x = 0;
    int w;
    for (Piece* s in sp.pieces) {
        for (Square *v in [s movesWithBoard:self]) {
            if ([self isLegalWithPiece:s andX:v.x andY:v.y]) {
                numberOfMoves++;
                z = [self moveWithPiece1:s andX:v.x andY:v.y andCastling:NO];
                if (k == WHITE) {
                    w = (z.b.white.value-z.b.black.value);
                } else {
                    w = (z.b.black.value-z.b.white.value);
                }
                if ([z.s isMemberOfClass:[Pawn class]] && z.s.y == 2 && z.s.color == WHITE) {
                    w -= 1;
                }
                if ([z.s isMemberOfClass:[Pawn class]] && z.s.y == 5 && z.s.color == BLACK) {
                    w -= 1;
                }
                if (movecount < 10 && z.s.moved2) {
                    w -= 1;
                }
                if ([z.s isMemberOfClass:[King class]] && !z.isCastling) {
                    w -= 1;
                }
                if ([z.s isMemberOfClass:[Rook class]] && movecount < 25) {
                    w -= 1;
                }
                if (k == WHITE) {
                    if (movecount < 20) {
                        x = -[z.b findValue:z.b.black andColor:BLACK andNumber:2];
                    } else {
                        x = -[z.b findValue:z.b.black andColor:BLACK andNumber:2];
                    }
                } else {
                    if (movecount < 20) {
                        x = -[z.b findValue:z.b.white andColor:WHITE andNumber:2];
                    } else {
                        x = -[z.b findValue:z.b.white andColor:WHITE andNumber:2];
                    }
                }
                if (z.isCastling) {
                    x += 5;
                }
                if ([z.s isMemberOfClass:[Pawn class]] && z.s.y == 2 && z.s.color == WHITE) {
                    x -= 1;
                }
                if ([z.s isMemberOfClass:[Pawn class]] && z.s.y == 5 && z.s.color == BLACK) {
                    x -= 1;
                }
                if ([z.s isMemberOfClass:[Pawn class]] && z.s.x > 1 && z.s.y > 1 && z.s.x < 6 && z.s.y < 6 && movecount < 2) {
                    x += 2;
                }
                if (movecount < 10 && z.s.moved2 && ![z isMemberOfClass:[Pawn class]]) {
                    x -= 1;
                }
                if (movecount < 10 && z.s.moved2 && [z isMemberOfClass:[Pawn class]]) {
                    x += 1;
                }
                if ([z.s isMemberOfClass:[King class]] && movecount < 40 && !z.isCastling) {
                    x -= 10;
                }
                if ([z.s isMemberOfClass:[Queen class]] && movecount < 10) {
                    x -= 1;
                }
                if ([z.s isMemberOfClass:[Rook class]] && movecount < 25) {
                    x -= 5;
                }
                if (z.isCastling) {
                    x += 5;
                }
                NSLog(@"%@-%c%c:%d\n",traduction[[z.s className]],z.s.x+'a',z.s.y+'1',x);
                if (x > best) {
                    best = x;
                    bestZ = z;
                }
            }
        }
    }
    return bestZ;
}
-(int)findValue:(Player *)sp andColor:(Color)k andNumber:(int)n {
    if ([self checkWithColor:k]) {
        int numberOfMoves = 0;
        for (Piece* s in sp.pieces) {
            for (Square *v in [s movesWithBoard:self]) {
                if ([self isLegalWithPiece:s andX:v.x andY:v.y]) {
                    numberOfMoves++;
                }
            }
        }
        if (numberOfMoves == 0) {
            return INT_MIN;
        } else {
            goto normal;
        }
    } else if ([self checkWithColor:(!(k-1)+1)]) {
        if (k == WHITE) {
            int numberOfMoves = 0;
            for (Piece* s in self.black.pieces) {
                for (Square *v in [s movesWithBoard:self]) {
                    if ([self isLegalWithPiece:s andX:v.x andY:v.y]) {
                        numberOfMoves++;
                    }
                }
            }
            if (numberOfMoves == 0) {
                return INT_MAX;
            } else {
                goto normal;
            }
        } else {
            int numberOfMoves = 0;
            for (Piece* s in self.white.pieces) {
                for (Square *v in [s movesWithBoard:self]) {
                    if ([self isLegalWithPiece:s andX:v.x andY:v.y]) {
                        numberOfMoves++;
                    }
                }
            }
            if (numberOfMoves == 0) {
                return INT_MAX;
            } else {
                goto normal;
            }
        }
    }
normal:
    if (n == 0) {
            if (k == WHITE) {
                return 3*(self.white.value-self.black.value);
            } else {
                return 3*(self.black.value-self.white.value);
            }
    } else {
        int best = INT_MIN;
        Move* z;
        Move* bestZ;
        int x = 0;
        int numberOfMoves = 0;
        int value = INT_MIN;
        int w;
        for (Piece* s in sp.pieces) {
            for (Square *v in [s movesWithBoard:self]) {
                if ([self isLegalWithPiece:s andX:v.x andY:v.y]) {
                    numberOfMoves++;
                    z = [self moveWithPiece1:s andX:v.x andY:v.y andCastling:NO];
                    if (k == WHITE) {
                        w = (self.white.value-self.black.value);
                    } else {
                        w = (self.black.value-self.white.value);
                    }
                    if ([z.s isMemberOfClass:[Pawn class]] && z.s.y == 2 && z.s.color == WHITE) {
                        w -= 1;
                    }
                    if ([z.s isMemberOfClass:[Pawn class]] && z.s.y == 5 && z.s.color == BLACK) {
                        w -= 1;
                    }
                    if (movecount < 10 && z.s.moved2) {
                        w -= 1;
                    }
                    if ([z.s isMemberOfClass:[King class]] && !z.isCastling) {
                        w -= 1;
                    }
                    if ([z.s isMemberOfClass:[Rook class]] && movecount < 25) {
                        w -= 1;
                    }
                    if (k == WHITE) {
                        x = -[z.b findValue:z.b.black andColor:BLACK andNumber:n-1];
                    } else {
                        x = -[z.b findValue:z.b.white andColor:WHITE andNumber:n-1];
                    }
                    if (z.s.x > 1 && z.s.y > 1 && z.s.x < 6 && z.s.y < 6 && abs(value) < 100) {
                        x++;
                    }
                    if ([z.s isMemberOfClass:[Pawn class]] && z.s.y == 2 && z.s.color == WHITE) {
                        x -= 1;
                    }
                    if ([z.s isMemberOfClass:[Pawn class]] && z.s.y == 5 && z.s.color == BLACK) {
                        x -= 1;
                    }
                    if ([z.s isMemberOfClass:[King class]] && !z.isCastling) {
                        x -= 1;
                    }
                    if (movecount < 10 && z.s.moved2) {
                        x -= 1;
                    }
                    if (x > best) {
                        best = x;
                        bestZ = z;
                    }
                }
            }
        }
        if (numberOfMoves == 0) {
            return 0;
        }
        //NSLog(@"%d,%@-%c%c:%d\n",n,[bestZ.s className],bestZ.s.x+'a',bestZ.s.y+'1',x);
        return best;
    }
}
-(BOOL)checkWithColor:(Color)k {
    if (k == WHITE) {
        for (int i = 0;i < self.black.pieces.count;i++) {
            for (Square *v2 in [self.black.pieces[i] movesWithBoard:self]) {
                if (v2.x == self.white.king.x && v2.y == self.white.king.y) {
                    return YES;
                }
            }
        }
        return NO;
    } else {
        for (int i = 0;i < self.white.pieces.count;i++) {
            for (Square *v2 in [self.white.pieces[i] movesWithBoard:self]) {
                if (v2.x == self.black.king.x && v2.y == self.black.king.y) {
                    return YES;
                }
            }
        }
        return NO;
    }

}

@end
