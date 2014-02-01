//
//  Action1ViewController.m
//  TimeWaster
//
//  Created by Cormac Chester on 1/30/14.
//  Copyright (c) 2014 Testman Industries. All rights reserved.
//

#import "Action1ViewController.h"

@interface Action1ViewController ()

@end

@implementation Action1ViewController

@synthesize notSatButton, wantMoreButton, browser, back, forward, refresh;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self loadReddit];
}

- (void)loadReddit
{
    NSURL *url = [NSURL URLWithString:@"http://i.reddit.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.browser loadRequest:request];
    self.browser.scalesPageToFit = YES;
    NSLog(@"Mobile Reddit launched");
}

- (IBAction)notSatButtonPress:(id)sender
{
    NSLog(@"Not Satisfied button pressed");
    ViewController *vC = [self.storyboard instantiateViewControllerWithIdentifier:@"vC"];
    vC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vC animated:YES completion:nil];
}

- (IBAction)wantMoreButtonPress:(id)sender
{
    
}

- (IBAction)backButtonPress:(id)sender
{
    [browser goBack];
    NSLog(@"Back button pressed");
}

- (IBAction)forwardButtonPress:(id)sender
{
    [browser goForward];
    NSLog(@"Forward button pressed");
}

- (IBAction)refreshButtonPress:(id)sender
{
    NSString *currentURLString = browser.request.URL.absoluteString;
    NSLog(@"Current URL: %@", currentURLString);
    
    NSURL *currentURL = [NSURL URLWithString:currentURLString];
    NSURLRequest *request = [NSURLRequest requestWithURL:currentURL];
    [self.browser loadRequest:request];
    self.browser.scalesPageToFit = YES;
    NSLog(@"Page reloaded");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
