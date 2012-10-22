//
//  YKContentsViewController.m
//  YokoManual
//
//  Created by xie liang on 9/14/12.
//  Copyright (c) 2012 YOKOHAMA. All rights reserved.
//

#import "YKContentsViewController.h"

@interface YKContentsViewController ()

@end

@implementation YKContentsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.wantsFullScreenLayout = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)goBack:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)gotoRead:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    YKReadViewController *readCon = [[YKReadViewController alloc] initWithNibName:nil bundle:nil];
    [readCon setCurrentPage:btn.tag];
    [self.navigationController pushViewController:readCon animated:YES];
    [readCon release];
}

@end
