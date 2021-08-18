//
//  SecondViewController.h
//  TestingXib
//
//  Created by Brunno Castigrini on 16/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController{
    NSTimer *timer;
    int counter;
}

- (IBAction)startTimer:(UIButton *)sender;
- (IBAction)pauseTimer:(UIButton *)sender;
- (IBAction)restartTimer:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@end

NS_ASSUME_NONNULL_END
