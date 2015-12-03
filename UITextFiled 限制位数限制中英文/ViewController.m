//
//  ViewController.m
//  UITextFiled 限制位数限制中英文
//
//  Created by wgw on 15/12/3.
//  Copyright © 2015年 wgw. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *demoTextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.demoTextField.delegate = self ;

}



//代理方法
#define MaxLength  11
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (range.location >= MaxLength) {
        return NO ;
    }
    return YES ;
}




















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
