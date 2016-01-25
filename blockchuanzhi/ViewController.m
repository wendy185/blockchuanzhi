//
//  ViewController.m
//  blockchuanzhi
//
//  Created by 何白 on 15/12/28.
//  Copyright © 2015年 媒立方传媒科技. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UIButton *MyButton;
@property(nonatomic,strong)UILabel *Mylabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.MyButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 50, 20)];
    self.MyButton.backgroundColor = [UIColor redColor];
    self.MyButton.titleLabel.text = @"转跳到下一级页面";
    [self.view addSubview:self.MyButton];
    
    [self.MyButton addTarget:self action:@selector(clickMyButton) forControlEvents:UIControlEventTouchUpInside];
    
    self.Mylabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 100, 40)];
    self.Mylabel.backgroundColor = [UIColor brownColor];
    
    [self.view addSubview:self.Mylabel];
    
    //这是block
//    ^ (NSString *a,NSString *b){
//   
//        return a;
//        
//    };
//    //这是一个有两个参数的block 有返回值
//    
//    ^void(void){
//        NSLog(@"这是一个没有参数的block");
//        
//   
//    };
    
    //定义block 有两个参数 返回int类型的
    
    int (^block1)();
    
    //用block 的语法给这个block赋值
    block1 = ^(){
        
        return 2;
        
    };
    
    int a = block1();
    printf("%d",a);
    
[self func:^(NSString *s1, UIColor *c) {
    //回调 执行方法之后执行这里的代码
    
}];
    
    
    
}

/**
 *  参数为block的函数 没有返回值
 *
 *  @param hbblock block有两个参数
 */
- (void)func:(hbblock)hbblock{
    
    hbblock(@"heheh",[UIColor redColor]);
    
}


- (void)clickMyButton{
    
    //push到下一个页面
    NextViewController *nextVC = [[NextViewController alloc]init];
    
//    nextVC.NextViewControllerBlock = ^(NSString *tfText){
//        [self resetLabel:tfText];
//    };
    

    
    //写一个block赋值给 属性  x这个block需要一个属性 这个属性在第二页中传过来
    nextVC.hbblock = ^(NSString *hbtext){
        
   
        self.Mylabel.text = hbtext;
        
    };
    
    
    
    
    [self.navigationController pushViewController:nextVC animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
