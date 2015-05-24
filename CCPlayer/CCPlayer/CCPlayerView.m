//
//  CCPlayerView.m
//  CCPlayer
//
//  Created by mac on 15/5/24.
//  Copyright (c) 2015年 gpr. All rights reserved.
//

#import "CCPlayerView.h"

@implementation CCPlayerView

+ (Class)layerClass{
    return [AVPlayerLayer class];
}

- (void)setVideoPlayer:(AVPlayer *)player{
    [(AVPlayerLayer *)self.layer setPlayer:player];
}


@end
