//
//  main.m
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerCharacter.h"
#import "CreatureGenerator.h"
#import "BattleSimulator.h"

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	int retVal = 0;
   // int retVal = UIApplicationMain(argc, argv, nil, nil);
	int count = 0;
	while(count < 10){
		NSString* finalString = [NSString string];
		finalString = @"Results: ";
		
		EnemyCharacter *newEnemy = [EnemyCharacter new];	
		[newEnemy initVariables];
		
		newEnemy = [CreatureGenerator generateRandomEnemy: newEnemy];
		NSLog(@"Enemy stats: ");
		NSLog(@"HP: %i", [newEnemy getHitpoints]);
		NSLog(@"AP: %i", [newEnemy  getAttackPower]);
		NSLog(@"MP: %i", [newEnemy getMagicPower]);
		NSLog(@"D: %i", [newEnemy getDefense]);
		NSLog(@"m: %i\n", [newEnemy getMana]);
		
		PlayerCharacter *hero = [PlayerCharacter new];
		[hero initVariables];
		NSLog(@"Hero stats: ");
		NSLog(@"HP: %i", [hero getHitpoints]);
		NSLog(@"AP: %i", [hero  getAttackPower]);
		NSLog(@"MP: %i", [hero getMagicPower]);
		NSLog(@"D: %i", [hero getDefense]);
		NSLog(@"m: %i\n", [hero getMana]);
		
		
		[BattleSimulator initializeBattle:hero : newEnemy];
		
		PlayerCharacter *new = [BattleSimulator runBattle];
		
		[hero setHitpoints: [new getHitpoints]];
		
		NSString *winnerString = [NSString string];
		
		if([hero getHitpoints] > 0)
		{
			winnerString = @"we win. Final hero HP: %i", [hero getHitpoints];
			NSLog(winnerString);
		}
		else{
			winnerString = @"we lose. Final hero HP: %i", [hero getHitpoints];
			NSLog(winnerString);
		}
	
		
		count++;
	}
	[pool release];
	
    return retVal;
}
