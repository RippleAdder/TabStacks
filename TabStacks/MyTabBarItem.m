//
//  MyTabBarItem.m
//  TabStacks
//
//  Created by Scott Olson on 8/8/16.
//  Copyright © 2016 App Data Room, LLS. All rights reserved.
//

#import "MyTabBarItem.h"

@implementation MyTabBarItem

- (void) dealloc
{
  [[NSNotificationCenter defaultCenter] removeObserver:self
                                                  name:@"TestNotification"
                                                object:nil];
}

-(void)awakeFromNib
{
  [super awakeFromNib];
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(refresh:)
                                               name:@"TestNotification"
                                             object:nil];
}

-(void)refresh:(NSNotification *)note
{
  [self setTitle:@"Uh Oh"];
}

@end
