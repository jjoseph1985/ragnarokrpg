//
//  PlayerCharacter.m
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/10/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "PlayerCharacter.h"

@implementation PlayerCharacter

- (void) initVariables
{
	hitpoints = 50;
	mana = 25;
	attackpower = 10;
	defense = 5;
	magicpower = 10;
}

- (void) subtractDamageFromHP:(int)damage
{
	hitpoints -= damage;
}

//Assume array is in order same as above
- (void) addNewSkillPoints:(int[]) skills
{
	hitpoints += skills[0];
	mana += skills[1];
	attackpower += skills[2];
	defense += skills[3];
	magicpower += skills[4];
}

@end