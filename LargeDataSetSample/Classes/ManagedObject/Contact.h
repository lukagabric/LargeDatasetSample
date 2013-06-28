//
//  Contact.h
//  LargeDataSetSample
//
//  Created by Luka Gabric on 4/12/13.
//  Copyright (c) 2013 Luka Gabric. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Contact : NSManagedObject

@property (nonatomic, retain) NSString * company;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * lastNameInitial;

@end
