//
//  main.m
//  RandomItem
//
//  Created by James Ray Mangum on 4/12/14.
//  Copyright (c) 2014 Ray Mangum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        NSLog(@"%@", items[10]);
        
        items = nil;
    }
    return 0;
}

