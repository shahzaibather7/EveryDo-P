//
//  DetailViewController.m
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "ToDoClass.h"
#import "DetailViewController.h"


@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
       
        [self configureView];
    }
}


- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.todoitem = self.detailItem;
        self.detailDescriptionLabel.text = self.todoitem.todoDetailedDescription;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}



@end
