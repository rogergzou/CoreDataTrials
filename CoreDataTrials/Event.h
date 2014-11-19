//
//  Event.h
//  CoreDataTrials
//
//  Created by Roger on 11/18/14.
//  Copyright (c) 2014 Roger Zou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Group;

@interface Event : NSManagedObject

@property (nonatomic, retain) NSDate * endDate;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * pausedDate;
@property (nonatomic, retain) NSNumber * pausedSeconds;
@property (nonatomic, retain) NSNumber * pauseNumber;
@property (nonatomic, retain) NSNumber * seconds;
@property (nonatomic, retain) NSDate * startDate;
@property (nonatomic, retain) Group *category;

@end
