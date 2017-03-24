//
//  ViewController.m
//  SearchBarSample
//
//  Created by youngmin joo on 2017. 3. 23..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

#import "ViewController.h"
#import "TargetConditionals.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) UISearchController *searchController;

//@property (strong, nonatomic) UISearchBar *searchBar;

@property (strong, nonatomic) NSArray *resultData;
@property (strong, nonatomic) NSArray *allData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.allData = @[@"a",@"ab",@"abc",@"abcd",@"abcde"];
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    self.searchController.searchResultsUpdater = self;
    self.tableView.tableHeaderView = self.searchController.searchBar;
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
//    self.searchBar.delegate = self;
    self.tableView.tableHeaderView = self.searchController.searchBar;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)filterText:(NSString *)str
{
    //self.resultData = [self.allData mutableCopy];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF == %@", str];
    
    self.resultData = [self.allData filteredArrayUsingPredicate:predicate];
    [self.tableView reloadData];
}

#define mark - tableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.searchController.isActive && (self.searchController.searchBar.text.length > 0)) {
        return  self.resultData.count;
    }
    
    return  self.allData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (self.searchController.isActive && (self.searchController.searchBar.text.length > 0)) {
        cell.textLabel.text = self.resultData[indexPath.row];
    }else
    {
        cell.textLabel.text = self.allData[indexPath.row];
    }
    
    
    
    
    return cell;
}

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    
    [self filterText:searchController.searchBar.text];
    
}

//- (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
//{
//    [self filterText:searchBar.text];
//    
//    return YES;
//}

@end
