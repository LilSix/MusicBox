//
//  MusicBoxViewController.m
//  MusicBox
//
//  Created by YU-CHEN, LIN on 16/04/2017.
//  Copyright © 2017 YU-CHEN, LIN. All rights reserved.
//

#import "MusicBoxViewController.h"

@import AVFoundation;

@interface MusicBoxViewController () {
    AVAudioPlayer *audioPlayer;
    NSMutableArray *audioForMutableArray;
    NSArray *audioForArray;
    NSUInteger *buttonTag;
    
}

@end

@implementation MusicBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        audioForArray = @[
//                          @"01.延俊出場",
//                          @"02.法國貴婦",
//                          @"03.台灣阿姐",
//                          @"04.哪吒三太子",
//                          @"05.軍人",
//                          @"06.電話鈴",
//                          @"07.科技新貴",
//                          @"08.牧師",
//                          @"09.老和尚",
//                          @"10.水電工",
//                          @"11.警車聲",
//                          @"12.夏威夷草裙舞1",
//                          @"13.夏威夷草裙舞2",
//                          @"14.企業歌",
//                          ];
//    });
    
    
    NSURL *audioFileURL = [[NSBundle mainBundle] URLForResource:@"01.延俊出場"
                                                  withExtension:@"mp3"];
    
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioFileURL
                                                         error:nil];
    [audioPlayer prepareToPlay];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {

//        [audioForMutableArray addObjectsFromArray:array];
//        NSLog(@"audioForMutableArray: %@", audioForMutableArray[0]);
    }
    return self;
}



- (IBAction)audioPlay:(UIButton *)button {
    
    if ([button.currentTitle isEqualToString:@"延俊出場"]) {
        [audioPlayer play];
    }
}

//    NSLog(@"Audio play: %@.mp3", );
//    button.selected = !button.selected;
//    if (button.selected) {
//        button.selected = !button.selected;
//        [audioPlayer play];
//    }
//    else {
//        [audioPlayer pause];
//        button.selected = !button.selected;
//    }
    
//    if ([audioPlayer play] && [button touchesCancelled:<#(nonnull NSSet<UITouch *> *)#> withEvent:<#(nullable UIEvent *)#>) {
//        [audioPlayer pause];
////        [audioPlayer prepareToPlay];
//        NSLog(@"Pause.");
//    } else {
////        [audioPlayer prepareToPlay];
//        [audioPlayer play];
//        NSLog(@"Play.");
//    }



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
