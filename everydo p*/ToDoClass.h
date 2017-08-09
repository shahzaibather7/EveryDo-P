//
//  ToDoClass.h
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <Foundation/Foundation.h>





@interface ToDoClass : NSObject

@property (nonatomic , weak) NSString *title;
@property (nonatomic ) NSString *todoDescription;
@property (nonatomic ) NSString *todoDetailedDescription;
@property (nonatomic ,assign) int priorityNumber;
@property (nonatomic ) BOOL isCompleted;


@end
