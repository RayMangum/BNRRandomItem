//
//  main.m
//  RandomItem
//
//  Created by James Ray Mangum on 4/12/14.
//  Copyright (c) 2014 Ray Mangum. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        
        BNRContainer *shoeBox = [[BNRContainer alloc] initWithItemName:@"Shoe Box"
                                          valueInDollars:10
                                            serialNumber:@"SHOE123"];
        
        for (int i = 0; i < 5; i++) {
            BNRItem *item = [BNRItem randomItem];
            [shoeBox addObject:item];
        }
        [items addObject:shoeBox];
        
        BNRContainer *smallBox = [[BNRContainer alloc] initWithItemName:@"Small Box" valueInDollars:100 serialNumber:@"SMALLBOX567"];
        
        for (int i = 0; i < 3; i++) {
            BNRItem *item = [BNRItem randomItem];
            [smallBox addObject:item];
        }
        [shoeBox addObject:smallBox];

        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
    }
    return 0;
}

