//
//  MenuScene.m
//  RagnarokRPG
//
//  Created by Jeremy Joseph on 4/21/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "MenuScene.h"
#import "PlayerCharacter.h"
#import "CreatureGenerator.h"
#import "BattleSimulator.h"

@implementation MenuScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"menu.png"];
        [bg setPosition:cpv(240, 160)];
        [self addChild:bg z:0];
        [self addChild:[MenuLayer node] z:1];
    }
    return self;
}
@end

@implementation MenuLayer
- (id) init {
    self = [super init];
    if (self != nil) {
        [MenuItemFont setFontSize:30];
        [MenuItemFont setFontName:@"Helvetica"];
        MenuItem *start = [MenuItemFont itemFromString:@"Start Game"
												target:self
											  selector:@selector(startGame:)];
        MenuItem *quit = [MenuItemFont itemFromString:@"Quit"
											   target:self
											 selector:@selector(quit:)];
        Menu *menu = [Menu menuWithItems:start, quit, nil];
        [menu alignItemsVertically];
        [self addChild:menu];
    }
    return self;
}
-(void)startGame: (id)sender {
    GameScene * gs = [GameScene node];
    [[Director sharedDirector] replaceScene:gs];
	
//	int count = 0;
//	while(count < 5){
//		count++;
//		NSString* finalString = [NSString string];
//		finalString = @"Results: ";
//		
//		EnemyCharacter *newEnemy = [EnemyCharacter new];	
//		[newEnemy initVariables];
//		
//		newEnemy = [CreatureGenerator generateRandomEnemy: newEnemy];
//		NSLog(@"Enemy stats: ");
//		NSLog(@"HP: %i", [newEnemy getHitpoints]);
//		NSLog(@"AP: %i", [newEnemy  getAttackPower]);
//		NSLog(@"MP: %i", [newEnemy getMagicPower]);
//		NSLog(@"D: %i", [newEnemy getDefense]);
//		NSLog(@"m: %i\n", [newEnemy getMana]);
//		
//		EnemyCharacter *newEnemy2 = [EnemyCharacter new];	
//		[newEnemy2 initVariables];
//		
//		newEnemy2 = [CreatureGenerator generateRandomEnemy: newEnemy2];
//		NSLog(@"Enemy stats: ");
//		NSLog(@"HP: %i", [newEnemy2 getHitpoints]);
//		NSLog(@"AP: %i", [newEnemy2  getAttackPower]);
//		NSLog(@"MP: %i", [newEnemy2 getMagicPower]);
//		NSLog(@"D: %i", [newEnemy2 getDefense]);
//		NSLog(@"m: %i\n", [newEnemy2 getMana]);
//		
//		EnemyCharacter *newEnemy3 = [EnemyCharacter new];	
//		[newEnemy3 initVariables];
//		
//		newEnemy3 = [CreatureGenerator generateRandomEnemy: newEnemy3];
//		NSLog(@"Enemy stats: ");
//		NSLog(@"HP: %i", [newEnemy3 getHitpoints]);
//		NSLog(@"AP: %i", [newEnemy3  getAttackPower]);
//		NSLog(@"MP: %i", [newEnemy3 getMagicPower]);
//		NSLog(@"D: %i", [newEnemy3 getDefense]);
//		NSLog(@"m: %i\n", [newEnemy3 getMana]);
//		
//		NSArray *enemies = [NSArray arrayWithObjects: newEnemy, newEnemy2, newEnemy3, nil]; 
//		
//		PlayerCharacter *hero = [PlayerCharacter new];
//		[hero initVariables];
//		NSLog(@"Hero stats: ");
//		NSLog(@"HP: %i", [hero getHitpoints]);
//		NSLog(@"AP: %i", [hero  getAttackPower]);
//		NSLog(@"MP: %i", [hero getMagicPower]);
//		NSLog(@"D: %i", [hero getDefense]);
//		NSLog(@"m: %i\n", [hero getMana]);
//		
//		
//		[BattleSimulator initializeBattle:hero : enemies];
//		
//		PlayerCharacter *new = [BattleSimulator runBattle];
//		
//		int newHp = [new getHitpoints];
//		
//		[hero setHitpoints: newHp];
//		
//		if(newHp > 0)
//		{
//			NSLog(@"we win. Final hero HP: %i", [hero getHitpoints]);
//		}
//		else{
//			NSLog(@"we lose. Final hero HP: %i", [hero getHitpoints]);
//		}
//	}
	
}
-(void)help: (id)sender {
    NSLog(@"help");
}
-(void)quit: (id)sender {
	[[Director sharedDirector] end];
}
-(void) dealloc {
	[super dealloc];
}

@end
