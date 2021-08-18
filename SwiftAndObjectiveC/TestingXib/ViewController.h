//
//  ViewController.h
//  TestingXib
//
//  Created by Brunno Castigrini on 10/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *bigText;
@property (weak, nonatomic) IBOutlet UILabel *bigLabel;
@property (weak, nonatomic) IBOutlet UIImageView *gitHubImage;
@property (weak, nonatomic) IBOutlet UITextField *inputTextLabel;
-(IBAction)changeLabelButton:(UIButton *)sender;
-(IBAction)setColourBtn:(UIButton *)sender;
-(IBAction)setBackgroundBtn:(UIButton* )sender;
-(IBAction)setDropShadowBtn:(UIButton* )sender;
-(IBAction)setShadowColourBtn:(UIButton* )sender;
@end

NS_ASSUME_NONNULL_END
