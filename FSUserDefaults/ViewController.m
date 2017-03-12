//
//  ViewController.m
//  FSUserDefaults
//
//  Created by Christian Floisand on 2017-03-12.
//  Copyright © 2017 Flyingsand. All rights reserved.
//

#import "ViewController.h"
#import "MyUserDefaults.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyUserDefaults *defaults = [MyUserDefaults sharedInstance];
    if (!defaults.aString) {
        defaults.aString = @"A string.";
    }
    
    NSInteger a = defaults.anInteger;
    defaults.anInteger = ++a;
    
    if (!defaults.aUrl) {
        NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
        defaults.aUrl = url;
    }
    
    if (!defaults.anArray) {
        defaults.anArray = @[@"One", @"Two", @"None"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    MyUserDefaults *defaults = [MyUserDefaults sharedInstance];
    NSLog(@"aString: %@, anInteger: %ld, aUrl: %@, anArray: %@",
          defaults.aString, (long)defaults.anInteger, defaults.aUrl, defaults.anArray);
}

@end
