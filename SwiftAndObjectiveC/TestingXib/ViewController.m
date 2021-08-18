//
//  ViewController.m
//  TestingXib
//
//  Created by Brunno Castigrini on 10/08/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)setColourBtn:(UIButton *)sender {
    self.bigLabel.textColor = [UIColor systemPurpleColor];
}

-(IBAction)setBackgroundBtn:(UIButton *)sender{
    self.bigLabel.backgroundColor = [UIColor colorWithRed:255/255.0 green:222/255.0 blue:222/255.0 alpha:1.0];
}

-(IBAction)setShadowColourBtn:(UIButton *)sender{
  
}
- (void)setDropShadowBtn:(UIButton *)sender{
    self.bigLabel.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.bigLabel.layer.shadowOpacity = 0.5;
    self.bigLabel.layer.shadowRadius =  2.0f;
    self.bigLabel.layer.shadowOffset = CGSizeMake(2, 2);		
}

- (IBAction)changeLabelButton:(UIButton *)sender {
    self.bigText.text = self.inputTextLabel.text;
    self.inputTextLabel.text = @"";
    
    // Grants that the keyboard will close when Enteder is pressed
    [self resignFirstResponder];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
        return YES;
    }
    [textView resignFirstResponder];
        return NO;
}
- (IBAction)fadeOut:(UIButton *)sender {
    [UIView animateWithDuration:1.0 animations:^{
        [self.gitHubImage setAlpha:0.0];
    }];
}

- (IBAction)fadeIn:(UIButton *)sender {
    [UIView animateWithDuration:1.0 animations:^{
        [self.gitHubImage setAlpha:1.0];
    }];
}
@end
