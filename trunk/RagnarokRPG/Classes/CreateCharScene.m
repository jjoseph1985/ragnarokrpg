//
//  CreateCharScene.m
//  RagnarokRPG
//
//  Created by Jeremy Joseph on 4/23/09.
//  Copyright 2009 __Boom City Games__. All rights reserved.
//

#import "CreateCharScene.h"
static const ccRGBB ccRED ={255,0,0};


@implementation CreateCharScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"char.jpg"];
        [bg setPosition:cpv(160, 240)];
        [self addChild:bg z:0];
		
		//create button 
        [MenuItemFont setFontSize:18]; 
		[MenuItemFont setFontName:@"Zapfino"]; 
		MenuItem *label = [MenuItemFont itemFromString:@"Create your character."]; 
		[((MenuItemFont *)label).label setRGB:0 :0 :0];
        MenuItem *back  = [MenuItemFont itemFromString:@"Done" 
												target:self 
											  selector:@selector(tapBack:)]; 
		[((MenuItemFont *)back).label setRGB:0 :0 :0];

        Menu *menu = [Menu menuWithItems:label, back, nil]; 
		[menu alignItemsVertically]; 
		[self addChild:menu]; 
        [back setPosition: cpv(160,20)]; 
		[label setPosition:cpv(160,420)];
        [menu setPosition: cpv(0,0)]; 
			
		UITextField *field = [[UITextField alloc]initWithFrame:CGRectMake(60, 80, 200, 30)];
		field.backgroundColor = [UIColor clearColor];
		field.textAlignment = UITextAlignmentCenter;
		field.text = @"Enter character name.";
		field.font = [UIFont fontWithName:@"Zapfino" size:12];
		field.textColor = [UIColor blackColor];
		field.delegate = self;
		field.clearsOnBeginEditing = TRUE;
		[[[Director sharedDirector] openGLView]addSubview: field];
		charNameField = field; 
    }
    return self;
}

- (void) tapBack: (id) sender
{
	MenuScene * ms = [MenuScene node];
    [[Director sharedDirector] replaceScene:ms];
}

- (void)textFieldShouldReturn:(UITextField *)theTextField { 
	if (theTextField == charNameField) 
	{ 
		charNameString = charNameField.text;
		NSLog(charNameString);
		[charNameField resignFirstResponder]; 
	}
} 

//- (void)textDidBeginEditing:(NSNotification *)aNotification{
//	UITextField *tf = [aNotification object];
//	if(tf == charNameField){
//		}
//	
//}

-(void) dealloc 
{ 
	[charNameField removeFromSuperview]; 
	[charNameField release]; 
	[charName release];
	[super dealloc]; 
} 

@end



