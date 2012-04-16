//
//  FirstViewController.h
//  TabNotification
//
//  Created by 真有 津坂 on 12/04/17.
//  
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
//スライダの値、sliderValue
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
//テキスト、TextField
@property (weak, nonatomic) IBOutlet UITextField *myField;

//カウントボタン、countButton
- (IBAction)add:(id)sender;
//メッセージ表示ボタン、Massage button
- (IBAction)textOn:(id)sender;
//キーボード隠す、テキスト入力の通知の作成と実行、keyboad hide &Text input notice and execution 
- (IBAction)keyHide:(id)sender;
//スライドの値の通知の作成と実行、slide value notice and execution
- (IBAction)sliderA:(id)sender;


@end
