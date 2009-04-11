//
//  PlayerCharacter.h
//  RagnarokRPG
//
//  Created by Boom City Games on 4/10/09.
//  Copyright 2009 __Boom City Games__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PlayerCharacter : NSObject {
	
	//status traits
	int hitpoints;
	int mana;
	
	//attributes
	int attackpower;
	int defense;
	int magicpower;
}

- (void) initVariables;
- (void) subtractDamageFromHP:(int) damage;
- (void) addNewSkillPoints:(int[]) skills;


@end
