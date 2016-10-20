//
//  ViewController.m
//  ABtableViewCount
//
//  Created by Student P_06 on 14/10/16.
//  Copyright © 2016 Akash Bansal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    multiplication = [[NSMutableArray alloc]init];
    [multiplication addObject:@""];

    self.myTableView.delegate=self;
    self.myTableView.dataSource=self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return multiplication.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text=[multiplication objectAtIndex:indexPath.row];
    return cell;
}



- (IBAction)submitButtonTapped:(id)sender {
    int enteredNumber = [self.numberfield.text intValue];
    int enteredLimit = [self.limitField.text intValue];
   
    if (multiplication.count > 0) {
        [multiplication removeAllObjects];
    }
    for ( int count = 1; count<=enteredLimit; count++) {
        NSString  *answer = [NSString stringWithFormat:@"%d  *  %d = %d  ",enteredNumber,count,enteredNumber*count];
        [multiplication addObject:answer];
        
    }
    [self.myTableView reloadData];
    [self.view endEditing:YES];
}
@end
