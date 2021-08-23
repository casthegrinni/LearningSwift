//
//  MainViewController.h
//  ThirdTask
//
//  Created by Brunno Castigrini on 19/08/21.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@class SecondViewController;

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController
@property (nonatomic, strong) MainViewController *mainview;
@property (strong, nonatomic) IBOutlet UIView *mainViewBackground;
- (IBAction)changeButton:(UIButton *)sender;
- (void)changeColour:(NSString *) colour;

@end

NS_ASSUME_NONNULL_END
