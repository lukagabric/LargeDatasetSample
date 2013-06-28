#import <CoreData/CoreData.h>


@interface NSManagedObject (NewObject)


+ (id)newManagedObjectInContext:(NSManagedObjectContext *)context;
+ (id)newManagedObject;


@end