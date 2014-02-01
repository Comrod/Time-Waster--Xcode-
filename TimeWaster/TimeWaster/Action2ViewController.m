//
//  Action2ViewController.m
//  TimeWaster
//
//  Created by Cormac Chester on 1/31/14.
//  Copyright (c) 2014 Testman Industries. All rights reserved.
//

#import "Action2ViewController.h"

@interface Action2ViewController ()

@end

@implementation Action2ViewController

@synthesize timesTapped, homeButton, wantMoreButton;

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
    
    [self.view setMultipleTouchEnabled:YES];
    totalTouches = 0;
    timesTapped.text = @"0 taps";
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touch started");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touch ended");
    [super touchesEnded:touches withEvent:event];
    
    NSUInteger touchCount = [touches count];
    int touchCountInt = (int)touchCount;
    if (touchCountInt > 1)
    {
        touchCountInt = 1;
    }
    totalTouches = touchCountInt + totalTouches;
    
    NSLog(@"Total touches: %d", totalTouches);
    timesTapped.text = [NSString stringWithFormat:@"%d", totalTouches];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
