//
//  MainViewController.h
//  1 Hour Rush
//
//  Created by Alec Wilcox  on 7/26/13.
//  Copyright (c) 2013 TinkerSoft. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>
{
    int randomNum;
    
    IBOutlet UITextField *field;
    IBOutlet UILabel *label;
    IBOutlet UIButton *generate; 
    
}
- (IBAction)enterguess:(id)sender;
- (IBAction)generatepress:(id)sender;



@end
