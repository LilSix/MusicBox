//
//  MusicBoxViewController.m
//  MusicBox
//
//  Created by YU-CHEN, LIN on 16/04/2017.
//  Copyright © 2017 YU-CHEN, LIN. All rights reserved.
//
//#pragma mark - Import

#import "MusicBoxViewController.h"

@import AVFoundation;


//#pragma mark - Class Extension

@interface MusicBoxViewController ()<AVAudioPlayerDelegate, UIScrollViewDelegate> {
    AVAudioPlayer *audioPlayer;
//    NSMutableArray *audioForMutableArray;
//    NSArray *audioForArray;
//    UIButton *button;
}

@end


//#pragma mark - Class

@implementation MusicBoxViewController

#pragma mark - Class Methods

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
    [audioPlayer setDelegate:self];
    [_scrollView setDelegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Interface Orientations

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}


#pragma mark - UIScrollViewDelegate Method

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSUInteger currentPage = (_scrollView.contentOffset.x - self.view.frame.size.width * 0.75) / self.view.frame.size.width + 1;
    [_pageControl setCurrentPage:currentPage];
}


- (IBAction)buttonPlayAudioTouch:(UIButton *)button {
    if ([[button currentTitle] isEqualToString:@"延俊出場"]) {
//        NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"01.延俊出場" withExtension:@"mp3"];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"01.延俊出場" ofType:@"mp3"];
        NSError *error = nil;
        if (filePath) {
//            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:&error];
            NSURL *fileURL = [NSURL fileURLWithPath:filePath];
            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
            
            [audioPlayer setNumberOfLoops:0];
            [audioPlayer prepareToPlay];
//            [self audioPlay:button];
            if (![audioPlayer isPlaying]) {
//                [button setAlpha:0.5];
//                [audioPlayer play];
//                NSLog(@"Audio play.");
                [self audioPlay:button playStatus:audioPlayer];
            } else {
//                [button setAlpha:1];
//                [audioPlayer pause];
//                NSLog(@"Audio pause.");
                [self audioPause:button playStatus:audioPlayer];
            }

        } else {
            NSLog(@"error: %@", error);
        }
        
//        if (![audioPlayer isPlaying]) {
//            [button setAlpha:0.5];
//            [audioPlayer play];
//            NSLog(@"Audio play.");
//        } else {
//            [button setAlpha:1];
//            [audioPlayer pause];
//            NSLog(@"Audio pause.");
//        }
    }
    
//    if ([button.currentTitle isEqualToString:@"延俊出場"]) {
//        NSURL *fileURL = [[NSBundle mainBundle] URLForResource:@"01.延俊出場" withExtension:@"mp3"];
//        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
//        if (![audioPlayer isPlaying]) {
//            button.alpha = 0.5;
//            [audioPlayer play];
//        } else {
//            button.alpha = 1;
//            [audioPlayer pause];
//            
//        }
//    }
}


- (void)audioPlay:(UIButton *)button playStatus:(AVAudioPlayer *)audioPlayer {
    [button setAlpha:0.5];
    [self->audioPlayer play];
}


-(void)audioPause:(UIButton *)button playStatus:(AVAudioPlayer *)audioPlayer {
    [button setAlpha:1];
    [self->audioPlayer pause];
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
