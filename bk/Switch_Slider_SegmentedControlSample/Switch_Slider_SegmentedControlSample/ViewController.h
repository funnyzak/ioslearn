//
//  ViewController.h
//  Switch_Slider_SegmentedControlSample
//
//  Created by 杨斌 on 15/4/18.
//  Copyright (c) 2015年 杨斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *LeftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *RightSwitch;
@property (weak, nonatomic) IBOutlet UILabel *labelSilderValue;

- (IBAction)valueChange:(id)sender;
- (IBAction)sliderValueChange:(id)sender;
- (IBAction)touchDown:(id)sender;


@end

