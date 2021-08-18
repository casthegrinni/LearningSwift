//
//  SecondViewController.m
//  SegundaTask
//
//  Created by Brunno Castigrini on 12/08/21.
//

#import "SecondViewController.h"
#import "MyTableCellTableViewCell.h"

@interface SecondViewController () {
    NSArray *leftArray;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    leftArray = [[NSArray alloc] initWithObjects: @"Sword", @"Crown", @"Ruby", @"Gold", @"Diamond", @"Ring", @"Necklace", @"Ruby", @"Skull", @"Hammer", @"Potion", @"Ruby", @"Fang", @"Dagger", @"Scroll", @"Bow", @"Ruby", @"Crystal", @"Staff", @"Ruby", @"Helmet", @"Armor", @"Ruby", @"Branch", @"Rose",   nil];
    [self creatingAlert];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [leftArray count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyTableCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    
    if(!cell){
        [tableView registerNib:[UINib nibWithNibName:@"MyTableCellTableViewCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    cell.leftLabel.text = [leftArray objectAtIndex:indexPath.row];

    NSLog(@"%@", [NSString stringWithFormat:@"%lid", (long)indexPath.row]);
    NSLog(@"%@", cell.leftLabel.text = [leftArray objectAtIndex:indexPath.row]);
    
    [cell.rightImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.png", cell.leftLabel.text]]];
    
    if ([cell.leftLabel.text isEqual: @"Ruby"]) {
        //[self.itensTable setSeparatorColor:[UIColor systemRedColor]];
        cell.backgroundColor = [UIColor systemRedColor];
    } else{
        // self.itensTable.separatorColor = [UIColor clearColor];
        cell.backgroundColor = [UIColor clearColor];
    }
    
    return cell;
}
- (IBAction)goBackButton:(UIButton *)sender {
    //[self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];
    //[self.navigationController popViewControllerAnimated:YES];
     }

- (void) creatingAlert {
    UIAlertController *chooseOne = [UIAlertController alertControllerWithTitle:@"Congratulations" message:@"You found a chest!" preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *chooseOK = [UIAlertAction actionWithTitle:@"Nice!" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
    }];

    [chooseOne addAction:chooseOK];
    
    [self presentViewController:chooseOne animated:YES completion:nil];
}
@end
