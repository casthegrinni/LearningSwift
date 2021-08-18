//
//  ViewController.m
//  SegundaTask
//
//  Created by Brunno Castigrini on 12/08/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)startButton:(UIButton *)sender {
    [self creatingAlert];

}

- (void) creatingAlert {
    UIAlertController *chooseOne = [UIAlertController alertControllerWithTitle:@"Going deep into the forest" message:@"Do you really want to go?" preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *chooseOK = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){

        NSLog(@"Here we go...");

        [self anotherView];
        
    }];

UIAlertAction *chooseCancel = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action){
    NSLog(@"We are not going anywhere");
    
}];

    [chooseOne addAction:chooseOK];
    [chooseOne addAction:chooseCancel];

    [self presentViewController:chooseOne animated:YES completion:nil];
}

- (void) anotherView {

    SecondViewController *chestView = [[SecondViewController alloc] initWithNibName:nil bundle:nil];

    [[self navigationController] pushViewController:chestView animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

// Changing the title
    self.title = @"New TEXT";
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
}

@end
