//
//  NetworkHandler.h
//  IP Lookup
//
//  Created by Rahul Garg on 11/06/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#ifndef IP_Lookup_NetworkHandler_h
#define IP_Lookup_NetworkHandler_h


#endif

@interface NetworkHandler : NSObject

@property NSString *ip;
@property NSString *countryCode;
@property NSString *countryName;
@property NSString *regionName;
@property NSString *city;
@property NSString *timeZone;
@property NSString *latitude;
@property NSString *longitude;

- (void) fetchData : (NSString*) ipString
        withHandler: (void (^)(BOOL success))completionBlock;
- (void) getFromDictionary;

@end