//
//  MovieDetailViewController.h
//  MovieQ
//
//  Created by Tony Tam on 6/7/14.
//  Copyright (c) 2014 Tony Tam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

@interface MovieDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *largeImage;

@property Movie *movie;
@end
