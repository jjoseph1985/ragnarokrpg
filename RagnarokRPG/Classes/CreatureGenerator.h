//
//  CreatureGenerator.h
//  RagnarokRPG
//
//  Created by Beth DeCarlo on 4/10/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EnemyCharacter.h"

@interface CreatureGenerator : NSObject
{

}

+ (EnemyCharacter *) generateRandomEnemy: (EnemyCharacter *) enemy;

@end
