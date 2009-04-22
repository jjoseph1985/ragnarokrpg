//
//  GameScene.m
//  RagnarokRPG
//
//  Created by Jeremy Joseph on 4/21/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "GameScene.h"
#import "MenuScene.h"

@implementation GameScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"game.jpg"];
        [bg setPosition:cpv(240, 160)];
        [self addChild:bg z:0];
        [self addChild:[GameLayer node] z:1];
    }
    return self;
}
@end

@implementation GameLayer
- (id) init {
    self = [super init];
    if (self != nil) {
        isTouchEnabled = YES;
    }
    return self;
}
- (BOOL)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    MenuScene * ms = [MenuScene node];
    [[Director sharedDirector] replaceScene:ms];
    return kEventHandled;
}
@end
