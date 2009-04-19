//
//  RagnarokRPGViewBasedAppDelegate.h
//  RagnarokRPGViewBased
//
//  Created by Jeremy Joseph on 4/19/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RagnarokRPGViewBasedViewController;

@interface RagnarokRPGViewBasedAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RagnarokRPGViewBasedViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RagnarokRPGViewBasedViewController *viewController;

@end

