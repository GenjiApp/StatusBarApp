//
//  AppDelegate.m
//  StatusBarApp
//
//  Created by Genji on 2013/01/03.
//  Copyright (c) 2013 Genji App. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSMenu *statusMenu;

@end

@implementation AppDelegate
{
  NSStatusItem *_statusItem;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  [self setupStatusItem];
}

#pragma mark -
#pragma mark Private Method
- (void)setupStatusItem
{
  NSStatusBar *systemStatusBar = [NSStatusBar systemStatusBar];
  _statusItem = [systemStatusBar statusItemWithLength:NSVariableStatusItemLength];
  [_statusItem setHighlightMode:YES];
  [_statusItem setTitle:@"StatusBarApp"];
  [_statusItem setImage:[NSImage imageNamed:@"StatusBarIconTemplate"]];
  [_statusItem setMenu:self.statusMenu];
}

@end
