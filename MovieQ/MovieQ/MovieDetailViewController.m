//
//  MovieDetailViewController.m
//  MovieQ
//
//  Created by Tony Tam on 6/7/14.
//  Copyright (c) 2014 Tony Tam. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"
#import "MBProgressHUD.h"

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
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    NSURL * resourcePathURL = [[NSBundle mainBundle] resourceURL];

    NSURL * urlToLoad = urlToLoad = [resourcePathURL URLByAppendingPathComponent:@"detail_view_placeholder.png"];;
    UIImage *placeholder = [[UIImage  alloc] initWithContentsOfFile:@"detail_view_placeholder.png"];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.movie.largeImageURL]];

    [self.largeImage setImageWithURLRequest:request
                           placeholderImage:placeholder
                                    success:^( NSURLRequest *request , NSHTTPURLResponse *response , UIImage *image ) {
                                        [self.largeImage setImage:image];
                                        [MBProgressHUD hideHUDForView:self.view animated:YES];
                                    }
     
                                    failure:^( NSURLRequest *request , NSHTTPURLResponse *response , NSError *error ) {
                                        [MBProgressHUD hideHUDForView:self.view animated:YES];
                                    }
     ];
    //[self.largeImage setImageWithURL:[NSURL URLWithString:self.movie.largeImageURL]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
