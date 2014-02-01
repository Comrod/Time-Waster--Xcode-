//
//  Action1ViewController.m
//  TimeWaster
//
//  Created by Cormac Chester on 1/30/14.
//  Copyright (c) 2014 Testman Industries. All rights reserved.
//

#import "Action1ViewController.h"
#import "A1NavViewController.h"
#import "A2NavViewController.h"

@interface Action1ViewController ()

@end

@implementation Action1ViewController

@synthesize homeButton, wantMoreButton, browser, back, forward, refresh, starterURL;

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
    
    [self pickPage];
    vcArray = [NSArray arrayWithObjects:@"a1VC", @"a2VC", nil];
}

- (void)pickPage
{
    pageArray = [NSArray arrayWithObjects:@"http://i.reddit.com", @"https://m.facebook.com", @"http://www.theuselessweb.com", @"http://en.m.wikipedia.org", @"http://mobile.nytimes.com", @"www.factslides.com", nil];
    
    NSUInteger randomIndex = arc4random()% [pageArray count];
    NSString *pickedPage = [pageArray objectAtIndex:randomIndex];
    NSLog(@"Random Page: %@", pickedPage);
    
    starterURL = [NSURL URLWithString:pickedPage];
    [self loadPage];
    
}

- (void)loadPage
{
    NSURLRequest *request = [NSURLRequest requestWithURL:starterURL];
    [self.browser loadRequest:request];
    self.browser.scalesPageToFit = YES;
    NSLog(@"Page launched");
}

- (IBAction)homeButtonPress:(id)sender
{
    NSLog(@"Home button pressed");
    ViewController *vC = [self.storyboard instantiateViewControllerWithIdentifier:@"vC"];
    vC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vC animated:YES completion:nil];
}

- (IBAction)wantMoreButtonPress:(id)sender
{
    
    NSUInteger randomIndex = arc4random()% [vcArray count];
    NSString *a1VCString = @"a1VC";
    NSString *a2VCString = @"a2VC";
    NSString *pickedVC = [vcArray objectAtIndex:randomIndex];
    
    if (pickedVC == a1VCString)
    {
        NSLog(@"Going to Action 1 VC");
        A1NavViewController *a1navVC = [self.storyboard instantiateViewControllerWithIdentifier:@"a1navVC"];
        a1navVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:a1navVC animated:YES completion:nil];
    }
    else if (pickedVC == a2VCString)
    {
        NSLog(@"Going to Action 2 VC");
        A2NavViewController *a2navVC = [self.storyboard instantiateViewControllerWithIdentifier:@"a2navVC"];
        a2navVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        [self presentViewController:a2navVC animated:YES completion:nil];
    }
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
