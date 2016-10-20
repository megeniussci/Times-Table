//
//  ViewController.h
//  ABtableViewCount
//
//  Created by Student P_06 on 14/10/16.
//  Copyright © 2016 Akash Bansal. All rights reserved.
//

#import <UIKit/UIKit.h>

// hello update

@interface ViewController : UIViewController<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
{
    
    NSMutableArray *multiplication;
}
@property (weak, nonatomic) IBOutlet UITextField *limitField;
@property (weak, nonatomic) IBOutlet UITextField *numberfield;

@property (strong, nonatomic) IBOutlet UITableView *myTableView;

- (IBAction)submitButtonTapped:(id)sender;

@end

