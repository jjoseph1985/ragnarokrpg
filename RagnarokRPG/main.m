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
		
		EnemyCharacter *newEnemy2 = [EnemyCharacter new];	
		[newEnemy2 initVariables];
		
		newEnemy2 = [CreatureGenerator generateRandomEnemy: newEnemy2];
		NSLog(@"Enemy stats: ");
		NSLog(@"HP: %i", [newEnemy2 getHitpoints]);
		NSLog(@"AP: %i", [newEnemy2  getAttackPower]);
		NSLog(@"MP: %i", [newEnemy2 getMagicPower]);
		NSLog(@"D: %i", [newEnemy2 getDefense]);
		NSLog(@"m: %i\n", [newEnemy2 getMana]);
		
		EnemyCharacter *newEnemy3 = [EnemyCharacter new];	
		[newEnemy3 initVariables];
		
		newEnemy3 = [CreatureGenerator generateRandomEnemy: newEnemy3];
		NSLog(@"Enemy stats: ");
		NSLog(@"HP: %i", [newEnemy3 getHitpoints]);
		NSLog(@"AP: %i", [newEnemy3  getAttackPower]);
		NSLog(@"MP: %i", [newEnemy3 getMagicPower]);
		NSLog(@"D: %i", [newEnemy3 getDefense]);
		NSLog(@"m: %i\n", [newEnemy3 getMana]);
	
		NSArray *enemies = [NSArray arrayWithObjects: newEnemy, newEnemy2, newEnemy3, nil]; 
		
		PlayerCharacter *hero = [PlayerCharacter new];
		[hero initVariables];
		NSLog(@"Hero stats: ");
		NSLog(@"HP: %i", [hero getHitpoints]);
		NSLog(@"AP: %i", [hero  getAttackPower]);
		NSLog(@"MP: %i", [hero getMagicPower]);
		NSLog(@"D: %i", [hero getDefense]);
		NSLog(@"m: %i\n", [hero getMana]);
		
		
		[BattleSimulator initializeBattle:hero : enemies];
		
		PlayerCharacter *new = [BattleSimulator runBattle];
		
		int newHp = [new getHitpoints];
		
		[hero setHitpoints: newHp];
		
		if(newHp > 0)
		{
			NSLog(@"we win. Final hero HP: %i", [hero getHitpoints]);
		}
		else{
			NSLog(@"we lose. Final hero HP: %i", [hero getHitpoints]);
		}
	
		
		count++;
	}
	[pool release];
	
    return retVal;
}
