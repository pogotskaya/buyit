//
//  DataSource.m
//  buyIt
//
//  Created by Alla Pogotskaya on 4/18/14.
//  Copyright (c) 2014 alla. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource

- (NSArray *) getLists
{
    NSArray *array = [NSArray arrayWithObjects: @"pie", @"flowers", @"books", nil];
    return array;
}

@end
