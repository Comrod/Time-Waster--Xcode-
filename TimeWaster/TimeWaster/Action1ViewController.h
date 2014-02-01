//
//  Action1ViewController.h
//  TimeWaster
//
//  Created by Cormac Chester on 1/30/14.
//  Copyright (c) 2014 Testman Industries. All rights reserved.
//

#import "ViewController.h"

@interface Action1ViewController : ViewController

//Main
@property (nonatomic, strong) IBOutlet UIBarButtonItem *notSatButton;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *wantMoreButton;

//Browser
@property (nonatomic, strong) IBOutlet UIWebView *browser;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *back;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *forward;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *refresh;

//Main
- (IBAction)notSatButtonPress:(id)sender;
- (IBAction)wantMoreButtonPress:(id)sender;

//Broswer
- (IBAction)backButtonPress:(id)sender;
- (IBAction)forwardButtonPress:(id)sender;
- (IBAction)refreshButtonPress:(id)sender;

@end
