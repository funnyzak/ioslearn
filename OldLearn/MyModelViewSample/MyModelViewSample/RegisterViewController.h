//
//  RegisterViewController.h
//  MyModelViewSample
//
//  Created by 杨斌 on 15/9/21.
//  Copyright (c) 2015年 杨斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textUserName;
- (IBAction)done:(id)sender;

@end
