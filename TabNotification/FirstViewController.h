//
//  FirstViewController.h
//  TabNotification
//
//  Created by 真有 津坂 on 12/04/17.
//  
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
//スライダの値
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
//テキスト
@property (weak, nonatomic) IBOutlet UITextField *myField;

//カウントボタン
- (IBAction)add:(id)sender;
//メッセージ表示ボタン
- (IBAction)textOn:(id)sender;
//キーボード隠す、テキスト入力の通知の作成と実行
- (IBAction)keyHide:(id)sender;
//スライドの値の通知の作成と実行
- (IBAction)sliderA:(id)sender;


@end
