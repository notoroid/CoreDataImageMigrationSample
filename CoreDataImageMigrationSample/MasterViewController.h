//
//  MasterViewController.h
//  CoreDataImageMigrationSample
//
//  Created by 能登 要 on 2013/11/16.
//  Copyright (c) 2013年 Irimasu Densan Planning. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
