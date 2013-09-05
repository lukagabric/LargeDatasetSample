@interface LAbstractSearchViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, NSFetchedResultsControllerDelegate, UISearchDisplayDelegate, UISearchBarDelegate>
{
    NSFetchedResultsController *_fetchedResultsController;
    
    __weak UILabel *_noResultsLabel;
    
    __weak IBOutlet UITableView *_tableView;
    
    NSArray *_filteredObjects;    
    NSMutableDictionary *_filteredResults;
}


@end


#pragma mark - Protected


@interface LAbstractSearchViewController ()


@property (nonatomic, readonly) NSFetchedResultsController *fetchedResultsController;


- (void)displayData;
- (void)filterContentForSearchText:(NSString *)searchText scope:(NSInteger)scope;
- (void)configureCell:(UITableViewCell *)cell forTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath;
- (NSString *)entityName;
- (NSArray *)sortDescriptors;
- (NSArray *)sortKeys;
- (NSString *)mainTableSectionNameKeyPath;
- (NSString *)mainTableCache;
- (NSPredicate *)frcPredicate;
- (NSPredicate *)searchPredicateWithSearchText:(NSString *)searchText scope:(NSInteger)scope;
- (NSUInteger)noOfLettersInSearch;
- (NSUInteger)fetchBatchSize;
- (BOOL)showIndexes;


@end