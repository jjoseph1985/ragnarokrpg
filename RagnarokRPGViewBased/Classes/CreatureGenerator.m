//
//  CreatureGenerator.m
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/10/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "CreatureGenerator.h"


@implementation CreatureGenerator

+ (EnemyCharacter *) generateRandomEnemy: (EnemyCharacter *) enemy
{
	//health mana d6
	int h = (rand() % 5) + [enemy getHitpoints];
	int m = (rand() % 5) + [enemy getMana];
	
	//magic and attack d3
	int mp = (rand() % 2) + [enemy getMagicPower];
	int ap = (rand() % 2) + [enemy getAttackPower];
	
	
	[enemy setHitpoints: h];
	[enemy setMana:m];
	[enemy setMagicPower:mp];
	[enemy setAttackPower:ap];
	
	
	return enemy;
}

@end
