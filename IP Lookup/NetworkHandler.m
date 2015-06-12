//
//  NetworkHandler.m
//  IP Lookup
//
//  Created by Rahul Garg on 11/06/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkHandler.h"
#import "ViewController.h"

NSDictionary *jsonDict;

@implementation NetworkHandler


- (void) fetchData : (NSString*) ipString {
    NSLog(@"Fetching data from IP ");
    
    NSString *urlString = [NSString stringWithFormat: @"https://freegeoip.net/json/%@",ipString];
    NSURL *baseURL = [NSURL URLWithString: urlString];
    NSData *urlData = [NSData dataWithContentsOfURL:baseURL];
    
    NSError *jsonError = [[NSError alloc] init];
    
    @try {
        jsonDict = [NSJSONSerialization JSONObjectWithData:urlData options:kNilOptions error:&jsonError];
    }
    @catch(NSException *e) {
        NSLog(@"Enter valid IP Address");
    }
    
    
    [self getFromDictionary];
}

- (void) getFromDictionary {
    _ip = [jsonDict objectForKey:@"ip"];
    _countryCode = [jsonDict objectForKey:@"country_code"];
    _countryName = [jsonDict objectForKey:@"country_name"];
    _regionName = [jsonDict objectForKey:@"region_name"];
    _city = [jsonDict objectForKey:@"city"];
    _timeZone = [jsonDict objectForKey:@"time_zone"];
    _latitude = [jsonDict objectForKey:@"latitude"];
    _longitude = [jsonDict objectForKey:@"longitude"];
}

@end


