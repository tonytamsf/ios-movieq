//
//  MovieCell.h
//  MovieQ
//
//  Created by Tony Tam on 6/7/14.
//  Copyright (c) 2014 Tony Tam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@end
