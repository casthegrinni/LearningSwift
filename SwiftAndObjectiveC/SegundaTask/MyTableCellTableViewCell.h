//
//  MyTableCellTableViewCell.h
//  SegundaTask
//
//  Created by Brunno Castigrini on 12/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UIImageView *rightImage;

@end

NS_ASSUME_NONNULL_END
