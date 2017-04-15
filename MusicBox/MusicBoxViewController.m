//
//  MusicBoxViewController.m
//  MusicBox
//
//  Created by YU-CHEN, LIN on 16/04/2017.
//  Copyright © 2017 YU-CHEN, LIN. All rights reserved.
//

#import "MusicBoxViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface MusicBoxViewController ()<AVAudioSessionDelegate> {
    AVAudioPlayer *audioPlayer;
}

@end

@implementation MusicBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *audioFilePath = [[NSBundle mainBundle] pathForResource:@"01.延俊出場" ofType:@"mp3"];
    NSData *musicData = [[NSData alloc] initWithContentsOfFile:audioFilePath];
    audioPlayer = [[AVAudioPlayer alloc] initWithData:musicData error:nil];
    
    
    for (int i = 0; i <= 3; i++) {
        for (int j = 0; j <= 3; j++) {
            UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20 + (251 * j), 20 + (187 * i), 231, 167)];
            [button setTitle:@"Button" forState:UIControlStateNormal];
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            button.backgroundColor = [UIColor blackColor];
            
            [button addTarget:self action:@selector(audioPlay:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:button];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)audioPlay:(UIButton *)button {
    NSLog(@"Audio playing.");
    [audioPlayer play];
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
