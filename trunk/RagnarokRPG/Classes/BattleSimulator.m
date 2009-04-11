//
//  BattleSimulator.m
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "BattleSimulator.h"


@implementation BattleSimulator

+ (void) initializeBattle: (PlayerCharacter *) attacker: (EnemyCharacter *) defender
{
	attackerHP = [attacker getHitpoints];
	defenderHP = [defender getHitpoints];
	attackerAP = [attacker getAttackPower];
	defenderAP = [defender getAttackPower];
	attackerD = [attacker getDefense];
	defenderD = [defender getDefense];
	hero = attacker;
	enemy = defender;
}

+ (PlayerCharacter *) runBattle
{
	int attackerPerSecond = attackerAP - defenderD;
	int defenderPerSecond = defenderAP - attackerD;
	NSLog(@"Battle start: \n");
	while (attackerHP > 0 && defenderHP > 0) {
		NSLog(@"Attacker HP: %i", attackerHP);
		NSLog(@"Defender HP: %i", defenderHP);
		
		defenderHP -= attackerPerSecond;
		attackerHP -= defenderPerSecond;
		sleep(1);
	}
	
	
	if(attackerHP > 0){
		[hero setHitpoints:attackerHP];
		return hero;
	}
	else{

	}
}

@end
