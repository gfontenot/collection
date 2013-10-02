//
//  HPSMasterViewController.h
//  collection
//
//  Created by Gordon Fontenot on 10/2/13.
//  Copyright (c) 2013 Gordon Fontenot. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface HPSMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
