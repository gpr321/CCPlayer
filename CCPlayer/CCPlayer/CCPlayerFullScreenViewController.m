//
//  CCPlayerFullScreenViewController.m
//  CCPlayer
//
//  Created by mac on 15/5/24.
//  Copyright (c) 2015年 gpr. All rights reserved.
//

#import "CCPlayerFullScreenViewController.h"

@interface CCPlayerFullScreenViewController ()

@end

@implementation CCPlayerFullScreenViewController

- (instancetype)init{
    if ( self = [super init] ) {
        self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}


@end
