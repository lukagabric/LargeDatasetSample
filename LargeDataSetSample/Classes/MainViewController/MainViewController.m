#import "MainViewController.h"
#import "Contact.h"
#import "SimpleLoadingView.h"


@implementation MainViewController


#pragma mark - View


- (void)viewDidLoad
{
    [super viewDidLoad];

    [self loadData];
}


#pragma mark - Data


- (void)loadData
{
    __weak typeof(self) weakSelf = self;
    
    [SimpleLoadingView showLoadingOnView:self.view];
    
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        [weakSelf displayData];
        [SimpleLoadingView hideLoadingFromView:weakSelf.view];
    });
}


#pragma mark - Overridden getters


- (NSString *)mainTableSectionNameKeyPath
{
    return @"lastNameInitial";
}


- (NSString *)mainTableCache
{
    return @"ContactCache";
}


- (NSArray *)sortKeys
{
    return @[@"lastName", @"firstName"];
}


- (NSString *)entityName
{
    return @"Contact";
}


- (BOOL)showIndexes
{
    return YES;
}


- (NSUInteger)fetchBatchSize
{
    return 30;
}


- (NSPredicate *)frcPredicate
{
    return nil;
}


- (NSPredicate *)searchPredicateWithSearchText:(NSString *)searchText scope:(NSInteger)scope
{
    return [NSPredicate predicateWithFormat:@"(lastName CONTAINS[cd] %@) OR (firstName CONTAINS[cd] %@)", searchText, searchText];
}


- (NSUInteger)noOfLettersInSearch
{
    return 3;
}


- (void)configureCell:(UITableViewCell *)cell forTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath
{
    Contact *contact;

    if (tableView == _tableView)
        contact = [_fetchedResultsController objectAtIndexPath:indexPath];
    else
        contact = [_filteredObjects objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@, %@", contact.lastName, contact.firstName];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@", contact.company, contact.email];
}


#pragma mark -


@end