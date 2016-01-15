//
//  ViewController.m
//  WebViewSample
//
//  Created by 杨斌 on 15/4/26.
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

- (IBAction)testLoadHTMLString:(id)sender {
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL *bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSError *error = nil;
    
    NSString *html = [[NSString alloc] initWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) { //数据加载没有错误的情况下
        [self.webView loadHTMLString:html baseURL:bundleUrl];
    } else {
        NSLog(@"testLoadHTMLString Error");
    }
}

- (IBAction)testLoadData:(id)sender {
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL *bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSError *error = nil;
    
    NSData *htmlData = [[NSData alloc] initWithContentsOfFile:htmlPath];
    if (error == nil) {
        [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:bundleUrl];
    } else {
        NSLog(@"testLoadData Error");
    }
}

- (IBAction)testLoadRequest:(id)sender {
    NSLog(@"test Load Request");
    NSURL *url = [NSURL URLWithString:@"http://www.zhichu99.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    self.webView.delegate = self;
}

#pragma mark -- UIWebViewDelegate 委托定义方法

- (void)webViewDidFinishLoad: (UIWebView *) webView {
    NSLog(@"%@", [webView stringByEvaluatingJavaScriptFromString:@"document.body.innerHTML"]);

}







@end
