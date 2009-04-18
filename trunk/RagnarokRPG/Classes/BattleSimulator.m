//
//  BattleSimulator.m
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/11/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "BattleSimulator.h"


@implementation BattleSimulator

+ (void) initializeBattle: (PlayerCharacter *) attacker: (NSArray *) defenders
{
	for(int i = 0; i < [defenders  count]; i++)
	{
		EnemyCharacter *enemy = [defenders objectAtIndex:i];
		defenderHPs[i] =  [enemy getHitpoints];
		defenderAPs[i] = [enemy getAttackPower];
		defenderDs[i] = [enemy getDefense];		
	}
	
	attackerHP = [attacker getHitpoints];
	attackerAP = [attacker getAttackPower];
	attackerD = [attacker getDefense];
	hero = attacker;
	enemies = [NSArray arrayWithArray:defenders];
}

+ (PlayerCharacter *) runBattle
{
	for(int i = 0; i < [enemies count]; i++){
		int attackerPerSecond = attackerAP - defenderDs[i];
		int defenderPerSecond = defenderAPs[i] - attackerD;
		NSLog(@"Battle start: \n");
		while (attackerHP > 0 && defenderHPs[i] > 0) {
			NSLog(@"Attacker HP: %i", attackerHP);
			NSLog(@"Defender HP: %i", defenderHPs[i]);
			
			defenderHPs[i] -= attackerPerSecond;
			attackerHP -= defenderPerSecond;
			sleep(1);
		}
	}
	
	[hero setHitpoints:attackerHP];
	return hero;
}

@end
