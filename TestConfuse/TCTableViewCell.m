//
//  TCTableViewCell.m
//  TestConfuse
//
//  Created by 申铭 on 2020/8/24.
//  Copyright © 2020 eetrust. All rights reserved.
//

#import "TCTableViewCell.h"

@implementation TCTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)clickTestBtn:(id)sender {
    NSLog(@"clickTestBtn");
}

@end
