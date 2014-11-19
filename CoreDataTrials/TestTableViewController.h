//
//  TestTableViewController.h
//  CoreDataTrials
//
//  Created by Roger on 11/18/14.
//  Copyright (c) 2014 Roger Zou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface TestTableViewController : UITableViewController

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end
