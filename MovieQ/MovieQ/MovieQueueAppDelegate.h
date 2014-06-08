//
//  MovieQueueAppDelegate.h
//  MovieQueue
//
//  Created by Tony Tam on 6/4/14.
//  Copyright (c) 2014 Tony Tam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieQueueAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end