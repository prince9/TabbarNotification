//
//  FirstViewController.m
//  TabNotification
//
//  Created by 真有 津坂 on 12/04/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize mySlider;
@synthesize myField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //おまじない、Tab1つ目とTab2つ目を選択した状態にしておく。これがないと動かない・・・
    //It changes into the state where Tab1 and Tab2 were chosen. 
    UITabBarController *controller = self.tabBarController;
    controller.selectedViewController = [controller.viewControllers objectAtIndex: 1];
    controller.selectedViewController = [controller.viewControllers objectAtIndex: 0];
    

}

- (void)viewDidUnload
{
    [self setMySlider:nil];
    [self setMyField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

//カウンタの通知の作成と実行、2つ目のTabの-(void)receiveNotification1:を実行する、notice and execution of counter 
- (IBAction)add:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"P1" object:self];
    
}

//メッセージの通知の作成と実行、2つ目のTabの-(void)receiveNotification2:を実行する、notice and execution of message
- (IBAction)textOn:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"P2" object:self];
}

//テキスト入力の通知の作成と実行、データを送るために使う、notice and execution of text input
- (IBAction)keyHide:(id)sender {
    NSString *myF = myField.text;
    //送る値を作成、Make send value
    NSDictionary *dic2 = [NSDictionary dictionaryWithObject:myF forKey:@"KEY2"];
    //通知を作成、実行　notice and execution
    [[NSNotificationCenter defaultCenter] postNotificationName:@"P4" object:self userInfo:dic2];
    //キーボード隠す、keyboad hide
[myField resignFirstResponder];
}

//スライドの値の通知の作成と実行、データを送るために使う、otice and execution of slide value
- (IBAction)sliderA:(id)sender {
    //値を文字列に変換、value is changed into character string
    NSString *sv = [NSString stringWithFormat:@"%f",mySlider.value];
    //送る値を作成、Make send value
    NSDictionary *dic1 = [NSDictionary dictionaryWithObject:sv forKey:@"KEY1"];
    //通知を作成、実行、notice and execution
    [[NSNotificationCenter defaultCenter] postNotificationName:@"P3" object:self userInfo:dic1];
    
}
@end
