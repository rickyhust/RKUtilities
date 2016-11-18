//
//  RKViewController.m
//  RKUtilities
//
//  Created by ricky on 11/16/2016.
//  Copyright (c) 2016 ricky. All rights reserved.
//

#import "RKViewController.h"

#import "RKUtilities.h"

@interface RKViewController ()

@end

@implementation RKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *strURL = @"https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=baidu%20arc&rsv_pq=926fc9de0000a6ad&rsv_t=2c18igdc4MTAA0bzEQTr37JqADhrA7cvUliYBPJHfLFMe1sFx4RpcBChMzA&rqlang=cn&rsv_enter=1&rsv_sug3=1";
    NSString *strDecode = [strURL urlDecode];
    NSString *strEncode = [strDecode urlEncode];
    
    NSLog(@"%@", strDecode);
    NSLog(@"%@", strEncode);
    
    
//    NSString *strSpace = @"    djkalf 1adfjlkkk   2  3xx     4ba     5album   ";
//    NSString *strSubSpace = [strSpace subSpace];
    
//    NSLog(@"-------------\n%@", strSubSpace);
    
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"@／：；（）¥「」＂、[]{}#%-*+=_\\|~＜＞￥$€^•'@#$%^&*()_+'\""];
    NSString *trimmedString = [@"**￥*$%b<ac>()&&*" stringByTrimmingCharactersInSet:set];
    NSLog(@"-------------\n%@", trimmedString);
    
    NSDictionary *dictonary = @{@"aabc":@"x", @"date":@"1990-12-13 23:06:05"};
    id object = [dictonary objectForKey:nil];
    NSLog(@"%@",object);
    
    id date = [dictonary dateForKey:@"date"];
    NSLog(@"%@",date);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
