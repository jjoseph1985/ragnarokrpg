//
//  main.m
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>


int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, @"RagnarokMain", @"RagnarokMain");
	[pool release];
	
    return retVal;
}