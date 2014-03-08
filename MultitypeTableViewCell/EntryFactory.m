//
//  EntryFactory.m
//  MultitypeTableViewCell
//
//  Created by Nawapon Luangnapa on 3/8/2557 BE.
//  Copyright (c) 2557 Nawapon Luangnapa. All rights reserved.
//

#import "EntryFactory.h"
#import "TitledEntry.h"
#import "TitledAndDetailedEntry.h"

@implementation EntryFactory

+ (EntryFactory *)sharedFactory {
    static EntryFactory *sharedFactory = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedFactory = [[self alloc] init];
    });
    
    return sharedFactory;
}

- (NSArray *)buildRandomEntries:(NSInteger)number {
    NSMutableArray *entries = [NSMutableArray array];
    
    for (int i = 0; i < number; i++) {
        if (rand() % 2 == 0) {
            [entries addObject:[[TitledEntry alloc] initWithRandomValues]];
        } else {
            [entries addObject:[[TitledAndDetailedEntry alloc] initWithRandomValues]];
        }
    }
    
    return entries;
}

@end
