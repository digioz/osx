//
//  AppDelegate.h
//  DigiOZ Temperature Converter
//
//  Created by Pedram Soheil on 10/3/12.
//  Copyright (c) 2012 DigiOz Multimedia, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSComboBox *conversionType;
@property (weak) IBOutlet NSTextField *txtInput;
@property (weak) IBOutlet NSTextField *lblEquation;
@property (weak) IBOutlet NSTextField *lblOutput;

- (IBAction)btnExitClicked:(id)sender;
- (IBAction)btnClearClicked:(id)sender;
- (IBAction)btnConvertClicked:(id)sender;

@end
