//
//  MusicBoxViewController.m
//  MusicBox
//
//  Created by YU-CHEN, LIN on 16/04/2017.
//  Copyright © 2017 YU-CHEN, LIN. All rights reserved.
//

#import "MusicBoxViewController.h"

@import AVFoundation;

@interface MusicBoxViewController ()<AVAudioPlayerDelegate, UIScrollViewDelegate> {
    AVAudioPlayer *audioPlayer;
    NSMutableArray *audioForMutableArray;
    NSArray *audioForArray;
//    UIButton *button;
}

@end

@implementation MusicBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback
//                                           error:nil];
//    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
//    [center addObserver:self
//               selector:@selector(audioPlayerFinishPlay:)
//                   name:AVAudioSessionInterruptionNotification
//                 object:nil];
    audioPlayer.delegate = self;
    [_scrollView setDelegate:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
