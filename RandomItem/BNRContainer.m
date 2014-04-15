//
//  BNRContainer.m
//  RandomItem
//
//  Created by James Ray Mangum on 4/14/14.
//  Copyright (c) 2014 Ray Mangum. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super initWithItemName:name
                    valueInDollars:value
                      serialNumber:sNumber];
    
    if (self) {
        _subItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)setSubItems:(NSMutableArray *)subs {
    _subItems = [subs copy];
}

- (NSMutableArray *)subItems {
    return _subItems;
}

- (void)addObject:(id)obj
{
    [self.subItems addObject:obj];
}

- (int)valueWithContents {
    int v = self.valueInDollars;
    for (id subItem in self.subItems) {
        if ([subItem isMemberOfClass:[BNRContainer class]]) {
            v += [subItem valueWithContents];
        } else {
            v += [subItem valueInDollars];
        }

    }
    return v;
}

- (NSString *)description
{
    NSMutableString *descriptionString = [[NSMutableString alloc] initWithFormat:@"%@ (%@): Worth $%d (container=$%d), recorded on %@",
                                   self.itemName,
                                   self.serialNumber,
                                   self.valueWithContents,
                                   self.valueInDollars,
                                   self.dateCreated];
    
    for (BNRItem *subItem in self.subItems) {
        NSMutableString *itemDescription = [[NSMutableString alloc] init];
        [itemDescription appendString:@"\n\t--"];
        [itemDescription appendString:[subItem description]];
        [descriptionString appendString:itemDescription];
    }
    
    return descriptionString;
}

@end
