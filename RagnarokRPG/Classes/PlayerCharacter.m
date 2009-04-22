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

- (void) setSpriteOnChar: (Sprite *) sp
{
	playerSprite = sp;
}

- (int) getHitpoints
{
	return hitpoints;
}

- (int) getMana
{
	return mana;
}

- (int) getAttackPower
{
	return attackpower;
}

- (int) getDefense
{
	return defense;
}

- (int) getMagicPower
{
	return magicpower;
}

- (Sprite *) getPlayerSprite
{
	return playerSprite;
}

@end