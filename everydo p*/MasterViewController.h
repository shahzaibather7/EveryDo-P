//
//  MasterViewController.h
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDoClass.h"

@protocol ToDoProtocol <NSObject>

-(void) addToDoItem: (ToDoClass*) todoItem;

@end


@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (nonatomic , strong) UITapGestureRecognizer *addButtonTapped;

@end

