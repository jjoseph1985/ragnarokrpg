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
static int attackerAP;
static int attackerD;
static int defenderHPs[3];
static int defenderAPs[3];
static int defenderDs[3];
static PlayerCharacter *hero;
static NSArray *enemies;

@interface BattleSimulator : NSObject {
	
}

+ (void) initializeBattle: (PlayerCharacter *) attacker: (NSArray *) defenders;

+ (PlayerCharacter *) runBattle;

@end
