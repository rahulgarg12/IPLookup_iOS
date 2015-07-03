//
//  ViewController.m
//  IP Lookup
//
//  Created by Rahul Garg on 11/06/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import "ViewController.h"

#import "NetworkHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_editTxt setDelegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getIPBtn:(id)sender {
    NetworkHandler *netHandlerObject = [[NetworkHandler alloc] init];
    
    [netHandlerObject fetchData:_editTxt.text withHandler:^(BOOL success){
            [netHandlerObject getFromDictionary];
    }];
    
    NSString *dictData = [NSString stringWithFormat:@" IP : %@\n Country Code : %@\n Country Name : %@\n Region Name : %@\n City : %@\n TimeZone : %@\n Latitude : %@\n Longitude : %@", netHandlerObject.ip,
                          netHandlerObject.countryCode,
                          netHandlerObject.countryName,
                          netHandlerObject.regionName,
                          netHandlerObject.city,
                          netHandlerObject.timeZone,
                          netHandlerObject.latitude,
                          netHandlerObject.longitude];
    _txtView.text = dictData;
}

-(void)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
}

@end
