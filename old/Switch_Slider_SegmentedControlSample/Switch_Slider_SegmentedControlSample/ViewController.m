//
//  ViewController.m
//  Switch_Slider_SegmentedControlSample
//
//  Created by 杨斌 on 15/4/18.
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


- (IBAction)valueChange:(id)sender; {
    UISwitch *witchSwitch = (UISwitch *)sender;
    BOOL setting = witchSwitch.isOn;
    [self.LeftSwitch setOn:setting animated:YES];
    [self.RightSwitch setOn:setting animated:YES];
}

- (IBAction)sliderValueChange:(id)sender {
    UISlider *slider = (UISlider *)sender;
    int progressAsint = (int)(slider.value*100);
    NSString *newText = [[NSString alloc]initWithFormat:@"%d", progressAsint];
    self.labelSilderValue.text = newText;
}

- (IBAction)touchDown:(id)sender {
    if(self.LeftSwitch.hidden == YES)
    {
        self.RightSwitch.hidden = NO;
        self.LeftSwitch.hidden = NO;
    }
    else
    {
        self.LeftSwitch.hidden = YES;
        self.RightSwitch.hidden = YES;
    }
}

@end
