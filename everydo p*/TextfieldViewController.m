//
//  TextfieldViewController.m
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "TextfieldViewController.h"

@interface TextfieldViewController () 

@property (nonatomic, strong) UITapGestureRecognizer *backgroundTap;


@end

@implementation TextfieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self createBackgroundTapGestureRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)createBackgroundTapGestureRecognizer
{
    self.backgroundTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backgroudWasTapped)];
    [self.view addGestureRecognizer:self.backgroundTap];
}


-(void)backgroudWasTapped
{
    [self.view endEditing:YES];
}

- (IBAction)taskButton:(id)sender {
  
    ToDoClass *newToDoItem = [[ToDoClass alloc] init];
    
    newToDoItem.title = self.textfieldTaskTitle.text;
    newToDoItem.todoDescription = self.textfieldTaskDescription.text;
    [self.delegate addToDoItem:newToDoItem];
    [self dismissViewControllerAnimated:YES completion:nil];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
