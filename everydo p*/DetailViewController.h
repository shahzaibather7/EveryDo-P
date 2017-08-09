//
//  DetailViewController.h
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterViewController.h"
#import "TableViewCell.h"
#import "ToDoClass.h"


@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (nonatomic, strong) ToDoClass *todoitem;

@end

