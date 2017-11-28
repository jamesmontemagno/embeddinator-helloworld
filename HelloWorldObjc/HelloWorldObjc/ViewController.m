//
//  ViewController.m
//  HelloWorldObjc
//
//  Created by James Montemagno on 11/28/17.
//  Copyright © 2017 James Montemagno. All rights reserved.
//

#import "ViewController.h"
#import "HelloWorld/HelloWorld.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    HelloWorld_MyClass *myClass = [[HelloWorld_MyClass alloc] init];
    NSString *result = [myClass helloWord:@"from Objective-C"];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Calling .NET Code!"
                                                                             message:result
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    //We add buttons to the alert controller by creating UIAlertActions:
    UIAlertAction *actionOk = [UIAlertAction actionWithTitle:@"Ok"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil]; //You can use a block here to handle a press on this button
    [alertController addAction:actionOk];
    [self presentViewController:alertController animated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
