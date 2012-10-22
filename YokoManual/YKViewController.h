//
//  YKViewController.h
//  YokoManual
//
//  Created by xie liang on 9/14/12.
//  Copyright (c) 2012 YOKOHAMA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YKContentsViewController.h"
#import "XLSinaEngine.h"

@interface YKViewController : UIViewController<XLSinaEngineDelegate>
{
    XLSinaEngine *_sinaEngine;
    NSInteger _flag;
}

- (IBAction)gotoContents:(id)sender;
- (IBAction)attentionWeibo;
- (IBAction)shareToSina;

@end
