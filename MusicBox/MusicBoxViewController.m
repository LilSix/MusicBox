//
//  MusicBoxViewController.m
//  MusicBox
//
//  Created by YU-CHEN, LIN on 16/04/2017.
//  Copyright © 2017 YU-CHEN, LIN. All rights reserved.
//

#import "MusicBoxViewController.h"

@import AVFoundation;

@interface MusicBoxViewController ()<AVAudioPlayerDelegate> {
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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        audioForMutableArray = [NSMutableArray array];
        audioForArray = @[
            @"01.延俊出場",
            @"02.法國貴婦",
            @"03.台灣阿姐",
            @"04.哪吒三太子",
            @"05.軍人",
            @"06.電話鈴",
            @"07.科技新貴",
            @"08.牧師",
            @"09.老和尚",
            @"10.水電工",
            @"11.警車聲",
            @"12.夏威夷草裙舞1",
            @"13.夏威夷草裙舞2",
            @"14.企業歌"
        ];
        
        for (int i = 0; i <= 13; i++) {
            NSURL *audioFileURL = [[NSBundle mainBundle] URLForResource:audioForArray[i]
                                                          withExtension:@"mp3"];
            audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioFileURL
                                                                 error:nil];
            audioPlayer.numberOfLoops = 0;
            [audioPlayer prepareToPlay];
            [audioForMutableArray addObject:audioPlayer];
        }
        audioPlayer.delegate = self;
    }
    return self;
}



- (IBAction)audioPlay:(UIButton *)button {
    // Button: 延俊出場
    if ([button.currentTitle isEqualToString:@"延俊出場"]) {
        audioPlayer = audioForMutableArray[0];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
            
        }
    }
    
    if ([button.currentTitle isEqualToString:@"法國貴婦"]) {
        audioPlayer = audioForMutableArray[1];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"臺灣阿姊"]) {
        audioPlayer = audioForMutableArray[2];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"哪吒三太子"]) {
        audioPlayer = audioForMutableArray[3];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"軍人"]) {
        audioPlayer = audioForMutableArray[4];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"電話鈴"]) {
        audioPlayer = audioForMutableArray[5];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"科技新貴"]) {
        audioPlayer = audioForMutableArray[6];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"牧師"]) {
        audioPlayer = audioForMutableArray[7];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"老和尚"]) {
        audioPlayer = audioForMutableArray[8];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"水電工"]) {
        audioPlayer = audioForMutableArray[9];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"警車聲"]) {
        audioPlayer = audioForMutableArray[10];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"夏威夷草裙舞 1"]) {
        audioPlayer = audioForMutableArray[11];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"夏威夷草裙舞 2"]) {
        audioPlayer = audioForMutableArray[12];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
    
    if ([button.currentTitle isEqualToString:@"企業歌"]) {
        audioPlayer = audioForMutableArray[13];
        if (![audioPlayer isPlaying]) {
            button.alpha = 0.5;
            [audioPlayer play];
        } else {
            button.alpha = 1;
            [audioPlayer pause];
        }
    }
}


- (void)audioStop {
    [audioPlayer stop];
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
