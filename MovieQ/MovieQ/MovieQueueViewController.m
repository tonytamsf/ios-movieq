//
//  MovieQueueViewController.m
//  MovieQueue
//
//  Created by Tony Tam on 6/4/14.
//  Copyright (c) 2014 Tony Tam. All rights reserved.
//

#import "MovieQueueViewController.h"
#import "MovieCell.h"
#import "Movie.h"
#import "UIImageView+AFNetworking.h"
#import "MovieDetailViewController.h"
#import "MBProgressHUD.h"

@interface MovieQueueViewController ()

@property (nonatomic, strong) NSArray *movies;
@end

@implementation MovieQueueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Movie Q";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.movieListTableView.delegate = self;
    self.movieListTableView.dataSource = self;
    

    
    NSLog(@"NIB %@", [UINib
                  nibWithNibName:@"MovieCell" bundle:nil]);
    
    [self.movieListTableView registerNib:[UINib
                                          nibWithNibName:@"MovieCell" bundle:nil]
                  forCellReuseIdentifier:@"MovieCell"];
    [self loadMovieData];


    self.movieListTableView.rowHeight = 150;
}

- (void) loadMovieData
{
    
    NSString *openingMoviesURL = @"http://api.rottentomatoes.com/api/public/v1.0/lists/movies/opening.json";
    NSString *topRentalsURL = @"http://api.rottentomatoes.com/api/public/v1.0/lists/dvds/top_rentals.json";
    NSString *urlParams = @"?apikey=t7anbdt8gp32yvw33cs92zkg&limit=10";
    NSString *url = [openingMoviesURL stringByAppendingString:urlParams];
    NSURL * urlToLoad = [NSURL URLWithString:url];
    
#define DEBUG_NO_NETWORKING 0
#if DEBUG_NO_NETWORKING == 1
    NSURL * resourcePathURL = [[NSBundle mainBundle] resourceURL];

    if(resourcePathURL)
    {
        urlToLoad = [resourcePathURL URLByAppendingPathComponent:@"boxoffice.json"];
    }
#endif
    
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:urlToLoad
                                                  cachePolicy:NSURLCacheStorageNotAllowed
                                              timeoutInterval:1];
    
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
                               id object = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                               NSLog(@"%@", object);
                               self.movies = [Movie moviesWithArray:object[@"movies"]];
                               [MBProgressHUD hideHUDForView:self.view animated:YES];

                               [self.movieListTableView reloadData];
                           } ];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.movies.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MovieCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell"];
    
    Movie *movie = self.movies[indexPath.row];
    //if (! movie ) { return nil; }
    NSLog(@"movie %@", movie.title);
    NSLog(@"movie %@", movie.synopsis);
    
    cell.titleLabel.text = movie.title;
    cell.synopsisLabel.text = movie.synopsis;
    [cell.thumbnailImage setImageWithURL:[NSURL URLWithString:movie.thumbnailURL]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"did selection %@", indexPath);
    
    MovieDetailViewController *vc = [[MovieDetailViewController alloc] init];
    Movie *movie = self.movies[indexPath.row];

    [self.navigationController pushViewController:vc animated:YES];
    vc.movie = movie;
}


@end