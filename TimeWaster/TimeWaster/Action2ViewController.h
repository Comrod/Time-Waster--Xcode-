//
//  Action2ViewController.h
//  TimeWaster
//
//  Created by Cormac Chester on 1/31/14.
//  Copyright (c) 2014 Testman Industries. All rights reserved.
//

#import "ViewController.h"

@interface Action2ViewController : ViewController
{
    int totalTouches;
}

@property (strong, nonatomic) IBOutlet UILabel *timesTapped;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *homeButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *wantMoreButton;


- (IBAction)homeButtonPressed:(id)sender;
- (IBAction)wantMoreButtonPressed:(id)sender;

@end
