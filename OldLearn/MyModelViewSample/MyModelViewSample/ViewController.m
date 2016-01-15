//
//  ViewController.m
//  MyModelViewSample
//
//  Created by 杨斌 on 15/9/21.
//  Copyright (c) 2015年 杨斌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)regonclick:(id)sender {
    UIStoryboard* mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *registerViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"registerViewController"];
    
    registerViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:registerViewController animated:YES completion:^{NSLog(@"Present MOdal View");}];
}
@end
