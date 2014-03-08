//
//  TitledCell.m
//  MultitypeTableViewCell
//
//  Created by Nawapon Luangnapa on 3/8/2557 BE.
//  Copyright (c) 2557 Nawapon Luangnapa. All rights reserved.
//

#import "TitledCell.h"

@implementation TitledCell

- (void)configureWithModel:(id)model {
    self.textLabel.text = [model valueForKeyPath:@"title"];
}

@end
