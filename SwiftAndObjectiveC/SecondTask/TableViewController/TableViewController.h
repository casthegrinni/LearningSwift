//
//  TableViewController.h
//  SecondTask
//
//  Created by Brunno Castigrini on 11/08/21.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController {
    NSArray *itensArray;
}
@property (assign, nonatomic) IBOutlet TableViewCell *customCell;
@property (strong, nonatomic) IBOutlet UITableView *cellTableView;


NS_ASSUME_NONNULL_END
