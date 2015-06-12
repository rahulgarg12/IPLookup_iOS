//
//  ViewController.h
//  IP Lookup
//
//  Created by Rahul Garg on 11/06/15.
//  Copyright (c) 2015 Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *txtLbl;
@property (weak, nonatomic) IBOutlet UITextField *editTxt;
@property (weak, nonatomic) IBOutlet UITextView *txtView;

- (IBAction)getIPBtn:(id)sender;

@end

