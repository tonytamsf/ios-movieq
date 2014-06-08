//
//  Movie.m
//  MovieQueue
//
//  Created by Tony Tam on 6/7/14.
//  Copyright (c) 2014 Tony Tam. All rights reserved.
//

#import "Movie.h"


@implementation Movie

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[@"title"];
        self.thumbnailURL = dictionary[@"posters"][@"profile"];
        self.synopsis = dictionary[@"synopsis"];
    }
    
    return self;
}

+ (NSArray *)moviesWithArray:(NSArray *)array {
    NSMutableArray *movies = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dictionary in array) {
        Movie *movie = [[Movie alloc] initWithDictionary:dictionary];
        [movies addObject:movie];
    }
    
    return movies;
}
@end
