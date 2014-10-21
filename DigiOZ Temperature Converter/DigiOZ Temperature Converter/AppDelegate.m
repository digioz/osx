//
//  AppDelegate.m
//  DigiOZ Temperature Converter
//
//  Created by Pedram Soheil on 10/3/12.
//  Copyright (c) 2012 DigiOz Multimedia, Inc. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize conversionType;
@synthesize txtInput;
@synthesize lblEquation;
@synthesize lblOutput;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [conversionType selectItemAtIndex:0];
    
}

- (IBAction)btnExitClicked:(id)sender {
    [NSApp terminate:self];
}

- (IBAction)btnClearClicked:(id)sender {
    txtInput.stringValue = [NSString stringWithFormat:@""];
    lblEquation.stringValue = [NSString stringWithFormat:@""];
    lblOutput.stringValue = [NSString stringWithFormat:@""];
    
}

- (IBAction)btnConvertClicked:(id)sender {
    double convertedValue = 0.0;
    double inputValue = [txtInput.stringValue doubleValue];
    
    if (conversionType.indexOfSelectedItem == 0)
    {
        lblEquation.stringValue = @"Equation Used: C = 5/9 * (F - 32)";
        convertedValue = 0.5555 * (inputValue - 32);
    }
    else if (conversionType.indexOfSelectedItem == 1)
    {
        lblEquation.stringValue = @"Equation Used: F = (C * 1.8) + 32";
        convertedValue = (inputValue * 1.8) + 32;
    }
    else if (conversionType.indexOfSelectedItem == 2)
    {
        lblEquation.stringValue = @"Equation Used: K = ((F - 32) * 0.5555) + 273.15";
        convertedValue = ((inputValue - 32) * 0.5555) + 273.15;
    }
    else if (conversionType.indexOfSelectedItem == 3)
    {
        lblEquation.stringValue = @"Equation Used: F = ((K - 273.15) * 1.8) + 32";
        convertedValue = ((inputValue - 273.15) * 1.8) + 32;
    }
    else if (conversionType.indexOfSelectedItem == 4)
    {
        lblEquation.stringValue = @"Equation Used: K = C + 273.15";
        convertedValue = inputValue + 273.15;
    }
    else if (conversionType.indexOfSelectedItem == 5)
    {
        lblEquation.stringValue = @"Equation Used: C = K - 273.15";
        convertedValue = inputValue - 273.15;
    }

    lblOutput.stringValue = [NSString stringWithFormat:@"%.2lf", convertedValue];
}
@end
