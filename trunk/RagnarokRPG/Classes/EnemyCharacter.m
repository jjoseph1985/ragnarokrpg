//
//  EnemyCharacter.m
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "EnemyCharacter.h"


@implementation EnemyCharacter

- (void) initVariables
{
	hitpoints = 25;
	mana = 12;
	attackpower = 5;
	defense = 2;
	magicpower = 5;
}

- (void) subtractDamageFromHP:(int) damage
{
	hitpoints -= damage;
}

- (void) setHitpoints: (int) hp
{
	hitpoints = hp;
}

- (void) setMana: (int) m
{
	mana = m;
}

- (void) setAttackPower: (int) ap
{
	attackpower = ap;
}

- (void) setDefense: (int) d
{
	defense = d;
}

- (void) setMagicPower: (int) mp
{
	magicpower = mp;
}

@end
