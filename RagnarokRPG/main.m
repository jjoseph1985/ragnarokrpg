//
//  main.m
//  RagnarokRPG
//
//  Created by Jeremy Joseph on 4/21/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	int retVal = UIApplicationMain(argc, argv, nil,
								   @"RagnarokRPGAppDelegate");
	[pool release];
	return retVal;
}
