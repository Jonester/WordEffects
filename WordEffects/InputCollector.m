//
//  InputCollector.m
//  WordEffects
//
//  Created by Chris Jones on 2017-01-09.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

+(NSString *)collectInput {
    char input [255];
    
    fgets(input, 255, stdin);
    NSString *inputString = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
}

@end
