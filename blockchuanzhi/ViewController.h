//
//  ViewController.h
//  blockchuanzhi
//
//  Created by 何白 on 15/12/28.
//  Copyright © 2015年 媒立方传媒科技. All rights reserved.
//

#import <UIKit/UIKit.h>
//block当做参数使用 定义一个别名 类型是block
typedef void(^hbblock)(NSString *s1 ,UIColor *c);


@interface ViewController : UIViewController

- (void)func:(hbblock)hbblock;




@end

