//
//  CreateCharScene.h
//  RagnarokRPG
//
//  Created by Jeremy Joseph on 4/23/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "PlayerCharacter.h"
#import <UIKit/UIKit.h>
#import "MenuScene.h"

@interface CreateCharScene : Scene {
	UITextField *charNameField;
	Label *charName;
	NSString *charNameString;
	PlayerCharacter *character;
}

@end
