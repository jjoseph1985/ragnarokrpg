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
		
		
		PlayerCharacter *hero = [PlayerCharacter new];
		[hero initVariables];
		
		[BattleSimulator initializeBattle:hero : newEnemy];
		
		NSObject *winner = [BattleSimulator runBattle];
		
		int hp = [hero getHitpoints];
		NSString *winnerString = [NSString string];
		
		if(winner == hero)
		{			
			winnerString = @"we win. Final hero HP: %i",hp;
			finalString = [NSString stringWithFormat:@"%@ %@", finalString, winner];
		}
		else{
			winnerString = @"we lose. Final hero HP: %i", hp;
			finalString = [NSString stringWithFormat:@"%@ %@", finalString, winner];
		}
		
		count++;
	}
	[pool release];
	
    return retVal;
}
