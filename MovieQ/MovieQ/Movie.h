//
//  Movie.h
//  MovieQueue
//
//  Created by Tony Tam on 6/7/14.
//  Copyright (c) 2014 Tony Tam. All rights reserved.
//

#import <Foundation/Foundation.h>

// @see http://guides.codepath.com/ios/Creating-a-Model
@interface Movie : NSObject

- (id)initWithDictionary:(NSDictionary *)dictionary;

+ (NSArray *)moviesWithArray:(NSArray *)array;

@property NSString *title;
@property NSString *thumbnailURL;
@property NSString *synopsis;

@end
