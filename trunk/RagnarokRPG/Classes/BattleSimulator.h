//
//  BattleSimulator.h
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerCharacter.h"
#import "EnemyCharacter.h"

static int attackerHP;
static int defenderHP;
static int attackerAP;
static int defenderAP;
static int attackerD;
static int defenderD;
static PlayerCharacter *hero;
static NSArray *enemies;

@interface BattleSimulator : NSObject {
	
}

+ (void) initializeBattle: (PlayerCharacter *) attacker: (NSArray *) defenders;

+ (PlayerCharacter *) runBattle;

@end
