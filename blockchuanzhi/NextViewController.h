//
//  NextViewController.h
//  blockchuanzhi
//
//  Created by 何白 on 15/12/28.
//  Copyright © 2015年 媒立方传媒科技. All rights reserved.
//

#import <UIKit/UIKit.h>




@interface NextViewController : UIViewController

@property(nonatomic,strong)UIButton *NextButton;
@property(nonatomic,strong)UITextField *NextTextField;



@property(nonatomic,copy)void(^hbblock)(NSString *);



@end
