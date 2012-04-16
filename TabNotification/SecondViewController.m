//
//  SecondViewController.m
//  TabNotification
//
//  Created by 真有 津坂 on 12/04/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize countText;
@synthesize mText;
@synthesize sliderValue;
@synthesize textF;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //カウンタ初期値
    count = 0;
    
    //通知を受信して-(void)receiveNotification1:を実行
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveNotification1:) name:@"P1" object:nil];
    //通知を受信して-(void)receiveNotification2:を実行
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveNotification2:) name:@"P2" object:nil];
  //通知を受信して-(void)receiveNotification3:を実行
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveNotification3:) name:@"P3" object:nil];
     //通知を受信して-(void)receiveNotification4:を実行
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveNotification4:) name:@"P4" object:nil];
     
}

//カウンタの動作を記述
-(void)receiveNotification1:(NSNotification *) notification {
    count++;
    countText.text = [NSString stringWithFormat:@"%d",count];
}
//メッセージ表示の動作を記述
-(void)receiveNotification2:(NSNotification *) notification {
    mText.text = [NSString stringWithFormat:@"Notification OK"];
}
//スライダの値を表示する動作を記述
-(void)receiveNotification3:(NSNotification *) notification {
    NSString *valueF = [[notification userInfo] objectForKey:@"KEY1"];
    sliderValue.text = valueF;
    
}

//テキストを表示する動作を記述
-(void)receiveNotification4:(NSNotification *) notification {
    NSString *textV = [[notification userInfo] objectForKey:@"KEY2"];
    textF.text = textV;
}

- (void)viewDidUnload
{
    [self setCountText:nil];
    [self setMText:nil];
    [self setSliderValue:nil];
    [self setTextF:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
