//
//  ViewController.m
//  PoemObjcShow
//
//  Created by Lois_pan on 16/4/14.
//  Copyright © 2016年 Lois_pan. All rights reserved.
//

#import "ViewController.h"
#import "PGQAnimationShow.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton * button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.button];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)showWindow{
    
    NSLog(@"heheda");
    
    [[PGQAnimationShow shareInstance]showWithMessage:@"Hello World" image:nil windowColor:[UIColor yellowColor]];
}

- (UIButton *)button{
    if (!_button) {
        _button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        [_button setTitle:@"Click Me" forState:UIControlStateNormal];
        _button.backgroundColor = [UIColor purpleColor];
        [_button addTarget:self action:@selector(showWindow) forControlEvents:UIControlEventTouchUpInside];
    }
    return  _button;
}

@end
