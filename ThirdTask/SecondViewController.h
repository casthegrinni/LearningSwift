//
//  SecondViewController.h
//  ThirdTask
//
//  Created by Brunno Castigrini on 19/08/21.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
@class MainViewController;

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (nonatomic, retain) MainViewController *mainView;

-(void) show:(MainViewController *) delegate;
- (IBAction)colourButton:(UIButton *)sender;

@end


NS_ASSUME_NONNULL_END
