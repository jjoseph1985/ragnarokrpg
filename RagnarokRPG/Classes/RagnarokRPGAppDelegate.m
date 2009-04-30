//
//  RagnarokRPGAppDelegate.m
//  RagnarokRPG
//
//  Created by Jeremy Joseph on 4/21/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RagnarokRPGAppDelegate.h"

@implementation RagnarokRPGAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [window setUserInteractionEnabled:YES];
    [window setMultipleTouchEnabled:YES];
    [[Director sharedDirector] setLandscape:NO];
    [[Director sharedDirector] attachInWindow:window];
	
    [window makeKeyAndVisible];
	
    MenuScene * ms = [MenuScene node];
	
    [[Director sharedDirector] runWithScene:ms];
}


@end
