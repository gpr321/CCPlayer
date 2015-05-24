//
//  CCPlayerViewController.m
//  CCPlayer
//
//  Created by mac on 15/5/24.
//  Copyright (c) 2015年 gpr. All rights reserved.
//

#import "CCPlayerViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "CCPlayerView.h"
#import "CCPlayerFullScreenViewController.h"

@interface CCPlayerViewController ()

@property (nonatomic,strong) AVPlayer *avPlayer;

@property (nonatomic,weak) CCPlayerView *videoView;

@end

@implementation CCPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

// www.github.com/wangshiyu13/SYMediaPlayer
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSString *urlString = @"http://115.159.3.198:8800/media/hls/g8e1_5fYA1vme1sT2QnqWiV6mmauZPy4.m3u8";
    NSURL *url = [NSURL URLWithString:urlString];
    AVPlayerItem *playerItem = [AVPlayerItem playerItemWithURL:url];
    self.avPlayer = [AVPlayer playerWithPlayerItem:playerItem];
    
    self.avPlayer.allowsExternalPlayback = YES;
    self.avPlayer.usesExternalPlaybackWhileExternalScreenIsActive = YES;
    
    [self.videoView setVideoPlayer:self.avPlayer];
    
    [self.avPlayer play];
    
    
//    CCPlayerFullScreenViewController *fullScreenVC = [[CCPlayerFullScreenViewController alloc] init];
//    [fullScreenVC.view addSubview:self.view];
//    
//    [self presentViewController:fullScreenVC animated:YES completion:nil];
    
}

- (CCPlayerView *)videoView{
    return (CCPlayerView *)self.view;
}

//- (AVPlayer *)avPlayer{
//    if ( _avPlayer == nil ) {
//        _avPlayer = [[AVPlayer alloc] init];
//        _avPlayer.allowsExternalPlayback = YES;
//        _avPlayer.usesExternalPlaybackWhileExternalScreenIsActive = YES;
//    }
//    return _avPlayer;
//}

- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation);
}

@end
