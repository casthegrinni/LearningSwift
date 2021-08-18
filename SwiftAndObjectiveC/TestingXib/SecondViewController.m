//
//  SecondViewController.m
//  TestingXib
//
//  Created by Brunno Castigrini on 16/08/21.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    counter = 0;
    [self updateLabel];
    
}

- (IBAction)startTimer:(UIButton *)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

- (void) updateTimer {
    counter += 1;
    [self updateLabel];
    
}
- (void) updateLabel {
    self.timerLabel.text = [NSString stringWithFormat:@"%i", counter];
}
- (IBAction)pauseTimer:(UIButton *)sender {
    [timer invalidate];
}

- (IBAction)restartTimer:(UIButton *)sender {
    [timer invalidate];
    counter = 0;
}




@end
