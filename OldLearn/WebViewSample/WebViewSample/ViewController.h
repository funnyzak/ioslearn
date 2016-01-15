//
//  ViewController.h
//  WebViewSample
//
//  Created by 杨斌 on 15/4/26.
//  Copyright (c) 2015年 杨斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)testLoadHTMLString:(id)sender;
- (IBAction)testLoadData:(id)sender;
- (IBAction)testLoadRequest:(id)sender;

@end

