//
//  ViewController.m
//  FillingCharacters
//
//  Created by Tsihsin Lee on 2019/1/30.
//  Copyright © 2019 Tsihsin Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//char * array[3][3];

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getArray];
}

-(void)getArray {
    
    self.dataArray = [[NSMutableArray alloc] initWithCapacity: 8];
    
    for (int i = 0; i < 8; i++) {
        
        NSMutableArray * subArray = [self generateSubArray];
        
        [self.dataArray insertObject: subArray atIndex: i];
    }
    
    NSLog(@"%lu", (unsigned long)[self.dataArray[0] count]);
//
//    [self.dataArray insertObject:[NSMutableArray arrayWithObjects:@"a",@"b",@"c",nil] atIndex:0];
//    [self.dataArray insertObject:[NSMutableArray arrayWithObjects:@"d",@"e",@"f",nil] atIndex:1];
//    [self.dataArray insertObject:[NSMutableArray arrayWithObjects:@"g",@"h",@"i",nil] atIndex:2];
//
//    NSLog(@"%@", self.dataArray[0][2]);
//
//    self.dataArray[0][2] = @"z";
//    NSLog(@"%@", self.dataArray[0][2]);
}

- (NSMutableArray *)generateSubArray {
    NSMutableArray * array = [[NSMutableArray alloc] initWithCapacity: 8];
    
    for (int i = 0; i < 8; i ++) {
        
        NSString * letter = [NSString stringWithFormat:@"%c", arc4random_uniform(26) + 'a'];
        
        [array insertObject: letter atIndex: i];
    }
    
    return array;
}
@end
