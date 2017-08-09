//
//  MasterViewController.m
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ToDoClass.h"
#import "TableViewCell.h"
#import "TextfieldViewController.h"

@interface MasterViewController () <ToDoProtocol>

@property NSMutableArray *objects;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
//Pre set code
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;


    ToDoClass *todoItem1 = [[ToDoClass alloc] init];
    todoItem1.title = @"Assignment";
    todoItem1.todoDescription =@"Math";
    todoItem1.isCompleted = NO;
    todoItem1.todoDetailedDescription = @"Taylor Series , Wave Equation and Heat Equation";
    
    ToDoClass *todoItem2 = [[ToDoClass alloc] init];
    todoItem2.title = @"Assignment";
    todoItem2.todoDescription =@"Physics";
    todoItem2.isCompleted = NO;
    todoItem2.todoDetailedDescription = @"Soid properties of different elements";
    
    ToDoClass *todoItem3 = [[ToDoClass alloc] init];
    todoItem3.title = @"Assignment";
    todoItem3.todoDescription = @"Programming";
    todoItem3.isCompleted = NO;
    todoItem3.todoDetailedDescription = @"Objective C delegation and protocols";
    
    ToDoClass *todoItem4 = [[ToDoClass alloc] init];
    todoItem4.title = @"Project";
    todoItem4.todoDescription = @"Social";
    todoItem4.isCompleted = NO;
    todoItem4.todoDetailedDescription = @"World War 2 Analysis and History";


   self.objects = [@[
                    todoItem1,
                    todoItem2,
                    todoItem3,
                    todoItem4
                    ] mutableCopy];




}


-(void)addToDoItem : (ToDoClass*) todoItem {
    if (!self.objects) {
        self.objects = [[NSMutableArray alloc] init];
    }
    [self.objects insertObject:todoItem atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    
}



- (void)viewWillAppear:(BOOL)animated {
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)insertNewObject:(id)sender {
    TextfieldViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"textfieldAddItem"];
    vc.delegate = self;
    [self.navigationController presentViewController:vc animated:YES completion:NULL];
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[segue destinationViewController];
        [controller setDetailItem:object];
    }
}




#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    ToDoClass *object = self.objects[indexPath.row];
    cell.titleLabel.text = object.title;
    cell.previewDescriptionLabel.text = object.todoDescription;
    cell.detailTextLabel.text = object.todoDetailedDescription;
    cell.todoitem = self.objects[indexPath.row];
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

@end
