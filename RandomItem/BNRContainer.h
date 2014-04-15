//
//  BNRContainer.h
//  RandomItem
//
//  Created by James Ray Mangum on 4/14/14.
//  Copyright (c) 2014 Ray Mangum. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_subItems;
}

- (void) setSubItems:(NSMutableArray *) subs;
- (NSMutableArray *) subItems;
- (void) addObject:(id)obj;
- (int) valueWithContents;

@end
