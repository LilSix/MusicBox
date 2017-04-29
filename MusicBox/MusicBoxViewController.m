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


@interface MusicBoxViewController ()<AVAudioPlayerDelegate, UIScrollViewDelegate> {
  NSString *buttonTitle;
  UIButton *previousButton;
}

@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

@end


@implementation MusicBoxViewController

#pragma mark - Class Methods

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark - Interface Orientations

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
  return UIInterfaceOrientationMaskLandscape;
}


#pragma mark - IBAction

- (IBAction)buttonPlayAudioTouch:(UIButton *)button {
  if ([_audioPlayer isPlaying] && [buttonTitle isEqualToString:[button currentTitle]]) {
      [self audioPause:button];
  } else {
      NSURL *fileURL = [[NSBundle mainBundle] URLForResource:[button currentTitle]
                                               withExtension:@"mp3"];
      NSError *error = nil;
      
      if (fileURL) {
          _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL
                                                                error:&error];
          [_audioPlayer setDelegate:self];
          [_audioPlayer setNumberOfLoops:0];
          [_audioPlayer prepareToPlay];
          [self audioPlay:button
             currentTitle:[button currentTitle]];
      } else {
          NSLog(@"error: %@", error);
      }
  }

}


#pragma mark - audioPlayer Methods

- (void)audioPlay:(UIButton *)button
     currentTitle:(NSString *)currentTitle {
  if (previousButton == nil) {
      [button setAlpha:0.5];
  } else if (previousButton != button) {
      [button setAlpha:0.5];
      [previousButton setAlpha:1];
  } else if (previousButton == button) {
      [button setAlpha:0.5];
  }
  
  previousButton = button;
  buttonTitle = currentTitle;
  [_audioPlayer play];
}


-(void)audioPause:(UIButton *)button {
  [button setAlpha:1];
  [_audioPlayer pause];
}


#pragma mark - AVAudioPlayerDelegate Method

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player
                       successfully:(BOOL)flag {
      player = nil;
      [previousButton setAlpha:1];
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
