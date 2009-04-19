//
//  RagnarokRPGViewBasedViewController.h
//  RagnarokRPGViewBased
//
//  Created by Jeremy Joseph on 4/19/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RagnarokRPGViewBasedViewController : UIViewController {
	IBOutlet UILabel *startGame;
	IBOutlet UILabel *ragTitle;
	IBOutlet UILabel *boomTitle;
	
	int count;
	NSInteger gameState;
}

@property(nonatomic,retain) IBOutlet UILabel *startGame;
@property(nonatomic,retain) IBOutlet UILabel *ragTitle;
@property(nonatomic,retain) IBOutlet UILabel *boomTitle;

@property(nonatomic) NSInteger gameState;

@end

