//
//  EnemyCharacter.h
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sprite.h"


@interface EnemyCharacter : NSObject {
	//status traits
	int hitpoints;
	int mana;
	
	//attributes
	int attackpower;
	int defense;
	int magicpower;
	
	//Sprite version
	Sprite *enemySprite;
}

- (void) initVariables;
- (void) subtractDamageFromHP:(int) damage;
- (void) setHitpoints: (int) hp;
- (void) setMana: (int) m;
- (void) setAttackPower: (int) ap;
- (void) setDefense: (int) d;
- (void) setMagicPower: (int) mp;
- (void) setSpriteOnChar: (Sprite *) sp;
- (int) getHitpoints;
- (int) getMana;
- (int) getAttackPower;
- (int) getDefense;
- (int) getMagicPower;
- (Sprite *) getEnemySprite;


@end
