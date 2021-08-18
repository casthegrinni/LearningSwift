//
//  SecondViewController.h
//  SecondTask
//
//  Created by Brunno Castigrini on 11/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController < UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end


NS_ASSUME_NONNULL_END
