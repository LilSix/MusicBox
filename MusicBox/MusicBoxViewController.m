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
    NSMutableArray *audioForMutableArray;
    NSArray *audioForArray;
    NSUInteger *buttonTag;
    
}

@end

@implementation MusicBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    for (int i = 0; i <= audioForMutableArray.count; i++) {
//        NSString *audioFilePath = [[NSBundle mainBundle] pathForResource:audioForArray[3] ofType:@"mp3"];
//        NSData *musicData = [[NSData alloc] initWithContentsOfFile:audioFilePath];
//        audioPlayer = [[AVAudioPlayer alloc] initWithData:musicData error:nil];
//    }
    
    for (int i = 0; i <= 15; i++) {
//        for (int j = 0; j <= 3; j++) {
            UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20 + (251 * i), 20, 231, 167)];
//            NSArray *nameForArray = @[@"延俊出場", @"法國貴婦", @"台灣阿姐", @"哪吒三太子"];
//            [button setTitle:nameForArray[j] forState:UIControlStateNormal];
            [button setTitle:@"Button" forState:UIControlStateNormal];
            [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            button.backgroundColor = [UIColor blackColor];
           
            [button addTarget:self action:@selector(audioPlay:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:button];
//        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
//        audioForMutableArray = [NSMutableArray array];

        audioForArray = @[@"01.延俊出場", @"02.法國貴婦", @"03.台灣阿姐", @"04.哪吒三太子"];
//        [audioForMutableArray addObjectsFromArray:array];
//        NSLog(@"audioForMutableArray: %@", audioForMutableArray[0]);
    }
    return self;
}



- (IBAction)audioPlay:(UIButton *)button {
    
    button.selected = !button.selected;
    if ([button.currentTitle isEqualToString:@"延俊出場"]) {
        NSString *audioFilePath = [[NSBundle mainBundle] pathForResource:audioForArray[0] ofType:@"mp3"];
        NSData *musicData = [[NSData alloc] initWithContentsOfFile:audioFilePath];
        audioPlayer = [[AVAudioPlayer alloc] initWithData:musicData error:nil];
        [audioPlayer play];
//        NSLog(@"button.tag = %ld", button);
        button.selected = !button.selected;
        
    } else if ([button.currentTitle isEqualToString:@"法國貴婦"]) {
        NSString *audioFilePath = [[NSBundle mainBundle] pathForResource:audioForArray[1] ofType:@"mp3"];
        NSData *musicData = [[NSData alloc] initWithContentsOfFile:audioFilePath];
        audioPlayer = [[AVAudioPlayer alloc] initWithData:musicData error:nil];
        [audioPlayer play];
        NSLog(@"button.tag = %ld", button.tag);
        button.selected = !button.selected;
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
