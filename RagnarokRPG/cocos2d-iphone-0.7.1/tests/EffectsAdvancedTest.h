#import <UIKit/UIKit.h>
#import "cocos2d.h"

@class Label;

//CLASS INTERFACE
@interface AppController : NSObject <UIAccelerometerDelegate, UIAlertViewDelegate, UITextFieldDelegate>
{
	UIWindow	*window;
}
@end

@interface TextLayer: Layer
{}
-(NSString*) title;

@end

