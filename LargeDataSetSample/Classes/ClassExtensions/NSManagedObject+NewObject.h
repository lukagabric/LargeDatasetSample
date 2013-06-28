//
//  NSManagedObject+NewObject.h
//  LionsClub
//
//  Created by Luka Gabric on 3/18/13.
//
//


#import <CoreData/CoreData.h>


@interface NSManagedObject (NewObject)


+ (id)newManagedObjectInContext:(NSManagedObjectContext *)context;
+ (id)newManagedObject;


@end