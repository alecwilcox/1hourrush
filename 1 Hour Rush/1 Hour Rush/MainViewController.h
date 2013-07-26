//
//  MainViewController.h
//  1 Hour Rush
//
//  Created by Kyle Ford on 7/26/13.
//  Copyright (c) 2013 TinkerSoft. All rights reserved.
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
