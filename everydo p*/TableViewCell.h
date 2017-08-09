//
//  TableViewCell.h
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoClass.h"

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *previewDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *donebutton;

@property (nonatomic, strong) ToDoClass *todoitem;

@end
