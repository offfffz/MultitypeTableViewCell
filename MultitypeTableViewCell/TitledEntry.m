//
//  TitledEntry.m
//  MultitypeTableViewCell
//
//  Created by Nawapon Luangnapa on 3/8/2557 BE.
//  Copyright (c) 2557 Nawapon Luangnapa. All rights reserved.
//

#import "TitledEntry.h"

@implementation TitledEntry

- (id)initWithRandomValues {
    if (self = [super init]) {
        self.reuseID = @"Titled";
        self.title = [NSString stringWithFormat:@"title.%d", rand()%100];
    }
    
    return self;
}

@end
