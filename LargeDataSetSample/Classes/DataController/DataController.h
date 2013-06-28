#define dataContext [[DataController sharedDataController] managedObjectContext]
#define saveDataContext [[DataController sharedDataController] saveContext]


#import <Foundation/Foundation.h>


@interface DataController : NSObject
{
    NSManagedObjectContext *_managedObjectContext;
    NSManagedObjectModel *_managedObjectModel;
    NSPersistentStoreCoordinator *_persistentStoreCoordinator;
}


@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


- (void)saveContext;


+ (DataController *)sharedDataController;


@end