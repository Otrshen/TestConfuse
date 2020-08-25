//
//  TCViewController.m
//  TestConfuse
//
//  Created by 申铭 on 2020/8/19.
//  Copyright © 2020 eetrust. All rights reserved.
//

#import "TCViewController.h"

@interface TCViewController ()
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@end

@implementation TCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    self.infoLabel.text = @"测试信息";
}

- (void)showInfo:(NSString *)info {
    NSLog(@"info:%@", info);
}


@end
