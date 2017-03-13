//
//  Start.m
//  Schakand
//
//  Created by Adam Stafford on 03-03-16.
//  Copyright (c) 2016 Adam Stafford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Start.h"
#import "Board.h"
#import "Move.h"

void start(void) {
    Board *board = [Board new];
    [board print];
    char *s = malloc(256);
    MOVE *z = malloc(sizeof(MOVE));
    Move *z2 = [[Move alloc] init];
    Piece *s1;
        board.white.computer = NO;
        board.black.computer = YES;
        while (1) {
        begin1:
            fflush(stdin);
            printf("Saisir votre coup:\n");
            scanf("%s", s);
            z = readString(s);
            s1 = [board.squares[z->x1][z->y1] piece];
            if (s1 == nil) {
                goto begin1;
            } else {
                if ([board isLegalWithPiece:s1 andX:z->x2 andY:z->y2]) {
                    [board makeMoveWithPiece:s1 andX:z->x2 andY:z->y2];
                    if ([s1 isMemberOfClass:[Pawn class]] && z->y2 == 7) {
                        [board.white.pieces removeObjectAtIndex:board.white.pieces.count-1];
                        printf("Entrez la pièce:\n");
                        Piece *s2;
                        do {
                            scanf("%s", s);
                            @try {
                                s2 = [[NSClassFromString(traduction[[NSString stringWithFormat:@"%s",s]]) alloc] init];
                                s2.x = z->x2;
                                s2.y = z->y2;
                                s2.color = WHITE;
                                [board.squares[z->x2][z->y2] setPiece:s2];
                                [board.squares[z->x2][z->y2] setColor:WHITE];
                                break;
                            } @catch (NSException* e) {
                            }
                        } while (1);
                    }
                } else {
                    printf("COUP INTERDIT\n");
                    goto begin1;
                }
            }
            [board print];
            printf("\n");
            if ([board checkWithColor:BLACK]) {
                int aantalMovetand = 0;
                for (Piece* s in board.black.pieces) {
                    for (Square *v in [s movesWithBoard:board]) {
                        if ([board isLegalWithPiece:s andX:v.x andY:v.y]) {
                            aantalMovetand++;
                        }
                    }
                }
                if (aantalMovetand == 0) {
                    printf("Vous avez gagné!\n");
                    break;
                }
            }
            z2 = [board findMove:board.black andColor:BLACK];
            [board makeMoveWithPiece:[board.squares[z2.s.X2][z2.s.Y2] piece] andX:z2.s.x andY:z2.s.y];
            printf("L'ordinateur joue %s-%c%c\n",[traduction[[z2.s className]] UTF8String],z2.s.x+'a',z2.s.y+'1');
            [board print];
            printf("\n");
            if ([board checkWithColor:WHITE]) {
                int aantalMovetand = 0;
                for (Piece* s in board.white.pieces) {
                    for (Square *v in [s movesWithBoard:board]) {
                        if ([board isLegalWithPiece:s andX:v.x andY:v.y]) {
                            aantalMovetand++;
                        }
                    }
                }
                if (aantalMovetand == 0) {
                    printf("Vous avez perdu!\n");
                    break;
                }
            }
        }
}
