//
//  RagnarokRPGViewBasedViewController.m
//  RagnarokRPGViewBased
//
//  Created by Jeremy Joseph on 4/19/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RagnarokRPGViewBasedViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "PlayerCharacter.h"
#import "CreatureGenerator.h"
#import "BattleSimulator.h"

#define kGameStateRunning 1
#define kGameStatePaused 2

@implementation RagnarokRPGViewBasedViewController
@synthesize gameState,startGame,ragTitle,boomTitle;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.gameState = kGameStatePaused;
	count = 0;
	[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(gameLoop) userInfo:nil repeats:YES];
}

-(void) gameLoop {
	if(gameState == kGameStateRunning) {
		count++;
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
		
		if(count == 5){
			gameState = kGameStatePaused;
		}
	}
	else{
		if(startGame.hidden){
			startGame.hidden = NO;
		}
	}
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	if(gameState == kGameStatePaused) {
		startGame.hidden = YES;
		ragTitle.hidden = YES;
		boomTitle.hidden = YES;
		
		NSString *imageName = [[NSBundle mainBundle] pathForResource:@"Falcon_Eye" ofType:@"jpg"];
		UIImage *image = [[UIImage alloc] initWithContentsOfFile: imageName];
		self.view.layer.contents = (CALayer *)image.CGImage; 
		
		gameState = kGameStateRunning;
	}
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
	[startGame release];
	[ragTitle release];
	[boomTitle release];
}

@end
