//
//  Group.h
//  CoreDataTrials
//
//  Created by Roger on 11/18/14.
//  Copyright (c) 2014 Roger Zou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Event;

@interface Group : NSManagedObject

@property (nonatomic, retain) NSNumber * eventCount;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * pausedSeconds;
@property (nonatomic, retain) NSNumber * seconds;
@property (nonatomic, retain) NSSet *events;
@end

@interface Group (CoreDataGeneratedAccessors)

- (void)addEventsObject:(Event *)value;
- (void)removeEventsObject:(Event *)value;
- (void)addEvents:(NSSet *)values;
- (void)removeEvents:(NSSet *)values;

@end
