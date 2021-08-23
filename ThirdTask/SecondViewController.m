//
//  SecondViewController.m
//  ThirdTask
//
//  Created by Brunno Castigrini on 19/08/21.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
 @synthesize mainView;

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (instancetype)init {
    self = [super init];
    if (self) {
    }
    return self;
}

-(void) show:(MainViewController *) delegate{
    mainView = delegate;
    
    UIColor *colorAlpha = [UIColor blackColor];
    colorAlpha = [colorAlpha colorWithAlphaComponent:0.5f];
    
    UIColor *colorTransparant = [UIColor blackColor];
    colorTransparant = [colorTransparant colorWithAlphaComponent:0.0f];
    
    [self.view setFrame: mainView.mainViewBackground.window.bounds];
    [self.view setBackgroundColor:colorTransparant];
    [self.view setContentScaleFactor: 0.6f];
    [mainView.mainViewBackground.window addSubview: self.view];

    [UIView animateWithDuration: 0.3f animations: ^{
       [self.view setBackgroundColor:colorAlpha];
       [self.view setContentScaleFactor: 1.0f];
   }];
}

-(void) hide {
     [UIView animateWithDuration: 0.3f animations: ^{
        [self.view setAlpha: 0.0f];
        [self.view setContentScaleFactor: 0.6f];
    } completion: ^(BOOL finished) {
        [self.view removeFromSuperview];
   }];
}

- (IBAction)colourButton:(UIButton *)sender {
    NSLog(@"eae");
    [mainView changeColour:sender.currentTitle];
    
    //id<SecondViewControllerDelegate> strongDelegate = self.delegate;
    
    //if ([strongDelegate respondsToSelector:@selector(childViewController:didChooseValue:)]) {
    //        [strongDelegate childViewController:self didChooseValue:self.slider.value];
    
    //if([strongDelegate respondsToSelector:@selector(secondViewController:colourButton: )]){
    // [strongDelegate secondViewController:self colourButton:sender.currentTitle];
        
    // }
}

@end
