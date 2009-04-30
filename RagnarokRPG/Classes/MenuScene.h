//
//  MenuScene.h
//  RagnarokRPG
//
//  Created by Jeremy Joseph on 4/21/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"
#import "CreateCharScene.h"

@interface MenuScene : Scene {}
@end

@interface MenuLayer : Layer {}
-(void)startGame: (id)sender;
-(void)help: (id)sender;
-(void)quit: (id)sender;
@end
