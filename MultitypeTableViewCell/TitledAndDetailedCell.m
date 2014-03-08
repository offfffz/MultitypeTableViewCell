//
//  TitledAndDetailedCell.m
//  MultitypeTableViewCell
//
//  Created by Nawapon Luangnapa on 3/8/2557 BE.
//  Copyright (c) 2557 Nawapon Luangnapa. All rights reserved.
//

#import "TitledAndDetailedCell.h"

@implementation TitledAndDetailedCell

- (void)configureWithModel:(id)model {
    [super configureWithModel:model];
    self.detailTextLabel.text = [model valueForKey:@"detail"];
}

@end
