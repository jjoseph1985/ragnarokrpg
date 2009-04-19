//
//  RagnarokRPGViewBasedAppDelegate.m
//  RagnarokRPGViewBased
//
//  Created by Jeremy Joseph on 4/19/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RagnarokRPGViewBasedAppDelegate.h"
#import "RagnarokRPGViewBasedViewController.h"

@implementation RagnarokRPGViewBasedAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
