//
//  TextfieldViewController.h
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "ToDoClass.h"
#import <UIKit/UIKit.h>
#import "MasterViewController.h"

@interface TextfieldViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textfieldTaskTitle;
@property (weak, nonatomic) IBOutlet UITextField *textfieldTaskDescription;
@property (weak) id <ToDoProtocol> delegate;


@end
