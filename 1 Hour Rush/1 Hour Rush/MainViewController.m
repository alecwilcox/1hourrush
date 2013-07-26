//
//  MainViewController.m
//  1 Hour Rush
//
//  Created by Alec Wilcox  on 7/26/13.
//  Copyright (c) 2013 TinkerSoft. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    label.text = [NSString stringWithFormat:@"Number, %i",randomNum];

}



-(IBAction)enterguess:(id)sender;{
    randomNum = arc4random () % 10;
    if ([field.text intValue] == randomNum) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Your Guess Was Correct!" message:nil delegate: self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil, nil];
        [alert show];
        }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Your Guess Was Wrong!" message:nil delegate: self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil, nil];
        [alert show];    }
}


- (void)didReceiveMemoryWarning{

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
