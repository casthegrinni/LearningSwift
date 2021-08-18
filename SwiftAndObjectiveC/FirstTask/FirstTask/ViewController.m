//
//  ViewController.m
//  FirstTask
//
//  Created by Brunno Castigrini on 06/08/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (IBAction)startButton:(id)sender {
    // Change to button later
    // NSLog(@"First checkpoint.");
    
    // This is for the alert window
    UIAlertController *chooseOne = [UIAlertController alertControllerWithTitle:@"Do you want to be redirected?" message:@"Please, choose one" preferredStyle:UIAlertControllerStyleAlert];
    
    // This for the "confirm" option
    UIAlertAction *chooseOK = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
        NSLog(@"Here we go...");
        
        // Refering to viewController and putting it in the variable "third"
         ThirdViewController *third = [[ThirdViewController alloc] initWithNibName:nil bundle:nil];
        // Changing the view change style
        
        // Going to another view
       [self presentViewController:third animated:YES completion:nil];
    }];
    
    // and this for the "cancel" option
    UIAlertAction *chooseCancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action){
        NSLog(@"We are not going anywhere");
    }];
    
    // Here I add the options to the alert window
    [chooseOne addAction:chooseOK];
    [chooseOne addAction:chooseCancel];
    
    // And here I "invoke" the alert window
    [self presentViewController:chooseOne animated:YES completion:nil];
}

@end
