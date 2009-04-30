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
        Sprite * bg = [Sprite spriteWithFile:@"fire.jpg"];
        [bg setPosition:cpv(160, 240)];
        [self addChild:bg z:0];
		
		//create button 
        [MenuItemFont setFontSize:24]; 
		[MenuItemFont setFontName:@"Helvetica"]; 
        MenuItem *back  = [MenuItemFont itemFromString:@"Done" 
												target:self 
											  selector:@selector(tapBack:)]; 
        Menu *menu = [Menu menuWithItems:back, nil]; 
		[menu alignItemsVertically]; 
		[self addChild:menu]; 
        [back setPosition: cpv(160,20)]; 
        [menu setPosition: cpv(0,0)]; 
		
		Label* l = [Label labelWithString:@"Enter character name:" fontName:@"Helvetica" fontSize:20];
		[l setPosition:CGPointMake(160,450)];
		[self addChild:l z:1];
		charName = l;
		
		UITextField *field = [[UITextField alloc]initWithFrame:CGRectMake(60, 50, 200, 20)];
		field.backgroundColor = [UIColor whiteColor];
		field.textAlignment = UITextAlignmentLeft;
		field.delegate = self;
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

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField { 
	if (theTextField == charNameField) 
	{ 
		charNameString = charNameField.text;
		NSLog(charNameString);
		[charNameField resignFirstResponder]; 
	} 
} 

-(void) dealloc 
{ 
	[charNameField removeFromSuperview]; 
	[charNameField release]; 
	[charName release];
	[super dealloc]; 
} 

@end



