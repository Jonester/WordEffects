//
//  main.m
//  WordEffects
//
//  Created by Chris Jones on 2017-01-09.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

typedef NS_ENUM (NSInteger, options) {uppercase = 1, lowercase = 2, numberize = 3, canadianize = 4, respond = 5, despaceit = 6};

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        
        while (YES) {
            NSLog(@"Choose one of the following word appending methods:\n\n1) Uppercase \n2) Lowercase \n3) Numberize \n4) Canadianize \n5) Respond \n6) De-space-it");
            
            NSString *choice = [InputCollector collectInput];
            
            switch ([choice intValue]) {
                case uppercase: {
                    NSLog(@"Enter some words you want capitalized:");
                    NSString *input = [InputCollector collectInput];
                    NSLog(@"%@", [input uppercaseString]);
                    break; }
                case lowercase: {
                    NSLog(@"Enter some words to see them all in lower case:");
                    NSString *input = [InputCollector collectInput];
                    NSLog(@"%@", [input lowercaseString]);
                    break; }
                case numberize: {
                    NSLog(@"Enter a number to be turned into a number. It's dumb, I know.");
                    NSString *input = [InputCollector collectInput];
                    NSLog(@"%d", [input intValue]);
                    break;}
                case canadianize: {
                    NSLog(@"Enter some words to become stereotypically Canadian.");
                    NSString *input = [InputCollector collectInput];
                    NSLog(@"%@", [input stringByAppendingString:@", eh?"]);
                    break; }
                case respond: {
                    NSLog(@"Ask a question or make an exasperated statement:");
                    NSString *input = [InputCollector collectInput];
        
                    if ([input hasSuffix:@"?"]) {
                        NSLog (@"I don't know.");
                    } else if ([input hasSuffix:@"!"]) {
                        NSLog (@"Whoa! Calm down.");
                    } else {
                        NSLog(@"Your sentence doesn't invoke any type of response.");
                    } break;}
                case despaceit:{
                    NSLog(@"Enter some words to have the spaces replaced with dashes:");
                    NSString *input = [InputCollector collectInput];
                    NSLog(@"%@", [input stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;}
                default:
                    NSLog(@"I don't know what to do with that entry.");
                    break;
            }
        }
    }
    return 0;
}
