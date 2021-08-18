//
//  SecondViewController.h
//  SegundaTask
//
//  Created by Brunno Castigrini on 12/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
- (IBAction)goBackButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITableView *itensTable;

@end

NS_ASSUME_NONNULL_END
