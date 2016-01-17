//
//  DetailViewController.h
//  MyNavigationComb
//
//  Created by 杨斌 on 15/9/28.
//  Copyright © 2015年 杨斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) NSString *url;
@end
