//
//  ConfigurableCell.h
//  MultitypeTableViewCell
//
//  Created by Nawapon Luangnapa on 3/8/2557 BE.
//  Copyright (c) 2557 Nawapon Luangnapa. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ConfigurableCell <NSObject>
- (void)configureWithModel:(id)model;
@end
