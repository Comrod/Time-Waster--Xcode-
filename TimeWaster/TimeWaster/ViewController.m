//
//  ViewController.m
//  TimeWaster
//
//  Created by Cormac Chester on 12/22/13.
//  Copyright (c) 2013 Testman Industries. All rights reserved.
//

#import "ViewController.h"
#import "A1NavViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)startButtonTap:(id)sender
{
    NSLog(@"Start button pressed");
    A1NavViewController *a1navVC = [self.storyboard instantiateViewControllerWithIdentifier:@"a1navVC"];
    a1navVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:a1navVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
