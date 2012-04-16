//
//  SecondViewController.h
//  TabNotification
//
//  Created by 真有 津坂 on 12/04/17.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController {
    //カウンタ用数値、counter
    int count;
}

//カウンタの値表示、View counter value 
@property (weak, nonatomic) IBOutlet UILabel *countText;
//メッセージ表示、View massage
@property (weak, nonatomic) IBOutlet UILabel *mText;
//スライドの値表示、View slider value 
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;
//テキスト入力表示、View text input
@property (weak, nonatomic) IBOutlet UILabel *textF;
@end
