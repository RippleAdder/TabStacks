//
//  FirstViewController.m
//  TabStacks
//
//  Created by Scott Olson on 8/8/16.
//  Copyright © 2016 App Data Room, LLS. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(IBAction)doGo:(id)sender{
  [[NSNotificationCenter defaultCenter]
   postNotificationName:@"TestNotification"
   object:self];
}

@end
