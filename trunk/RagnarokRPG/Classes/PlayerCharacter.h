//
//  PlayerCharacter.h
//  RagnarokRPG
//
//  Created by Boom City Games on 4/10/09.
//  Copyright 2009 __Boom City Games__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sprite.h"


@interface PlayerCharacter : NSObject {
	
	//status traits
	int hitpoints;
	int mana;
	
	//attributes
	int attackpower;
	int defense;
	int magicpower;
	
	//Sprite version
	Sprite *playerSprite;
	
	//name
	NSString *charName;
}

- (void) initVariables;
- (void) subtractDamageFromHP:(int) damage;
- (void) setHitpoints: (int) hp;
- (void) setMana: (int) m;
- (void) setAttackPower: (int) ap;
- (void) setDefense: (int) d;
- (void) setMagicPower: (int) mp;
- (void) setSpriteOnChar: (Sprite *) sp;
- (void) setName: (NSString *) n;
- (int) getHitpoints;
- (int) getMana;
- (int) getAttackPower;
- (int) getDefense;
- (int) getMagicPower;
- (Sprite *) getPlayerSprite;
- (NSString *) getName;


@end
