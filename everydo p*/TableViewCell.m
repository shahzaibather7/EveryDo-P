//
//  TableViewCell.m
//  everydo p*
//
//  Created by Mohammad Shahzaib Ather on 2017-08-08.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "TableViewCell.h"


@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
 
}

- (IBAction)isCompletedButton:(id)sender {
    self.todoitem.isCompleted = YES;
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:self.todoitem.todoDescription];
    [attributeString addAttribute:NSStrikethroughStyleAttributeName
                            value:@2
                            range:NSMakeRange(0, [attributeString length])];
    self.previewDescriptionLabel.attributedText = attributeString;

}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    }


@end
