//
//  TitledandDetaildEntry.m
//  MultitypeTableViewCell
//
//  Created by Nawapon Luangnapa on 3/8/2557 BE.
//  Copyright (c) 2557 Nawapon Luangnapa. All rights reserved.
//

#import "TitledAndDetailedEntry.h"

@implementation TitledAndDetailedEntry
- (id)initWithRandomValues {
    if (self = [super initWithRandomValues]) {
        self.reuseID = @"TitledAndDetailed";
        self.detail = [NSString stringWithFormat:@"detail.%d", rand()%100];
    }
    
    return self;
}
@end
