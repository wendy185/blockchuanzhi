//
//  NextViewController.m
//  blockchuanzhi
//
//  Created by 何白 on 15/12/28.
//  Copyright © 2015年 媒立方传媒科技. All rights reserved.
//

#import "NextViewController.h"


@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.NextButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 50, 20)];
    self.NextButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:_NextButton];
    [self.NextButton addTarget:self action:@selector(clickNextButton) forControlEvents:UIControlEventTouchUpInside];
    
    self.NextTextField = [[UITextField alloc]initWithFrame:CGRectMake(100, 200, 100, 100)];
    self.NextTextField.backgroundColor = [UIColor brownColor];
    [self.view addSubview:self.NextTextField];
    
                          
    
    
}



- (void)clickNextButton{
    
    if (self.hbblock) {
        
        //给block属性传入一个参数
        self.hbblock(self.NextTextField.text);
        
        
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
