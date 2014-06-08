//
//  MovieDetailViewController.m
//  MovieQ
//
//  Created by Tony Tam on 6/7/14.
//  Copyright (c) 2014 Tony Tam. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailViewController ()

@end



@implementation MovieDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.detailLabel.text = @"whatever";
    self.detailLabel.text = self.movie.synopsis;
    [self.largeImage setImageWithURL:[NSURL URLWithString:self.movie.largeImageURL]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
