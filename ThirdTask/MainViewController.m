//
//  MainViewController.m
//  ThirdTask
//
//  Created by Brunno Castigrini on 19/08/21.
//

#import "MainViewController.h"
#import "SecondViewController.h"
// customPurple, customBlue, customPink

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainViewBackground.backgroundColor = [UIColor colorNamed:@"customPurple"];
}

- (IBAction)changeButton:(UIButton *)sender {
    NSLog(@"Testing");
    SecondViewController *viewController = [[SecondViewController alloc] init];
    
    [viewController show:self];
}

-(void) changeColour:(NSString *) colour{
    NSLog(@"%@", colour);
    self.mainViewBackground.backgroundColor = [UIColor colorNamed: colour];
}

@end
