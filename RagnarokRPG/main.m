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

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
	
	EnemyCharacter *newEnemy = [EnemyCharacter new];	
	[newEnemy initVariables];
	
	newEnemy = [CreatureGenerator generateRandomEnemy: newEnemy];
	
	
    return retVal;
}
