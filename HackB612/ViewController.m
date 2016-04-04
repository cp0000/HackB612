//
//  ViewController.m
//  HackB612
//
//  Created by cp on 4/4/16.
//  Copyright © 2016 cp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSData * data = [[NSData alloc] initWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"china" ofType:@"dat"]];
    data = [self reverseData: data];
    UIImage * image  = [UIImage imageWithData: data];
    UIImageView * imageView = [[UIImageView alloc] initWithImage: image];
    imageView.frame = self.view.bounds;
    [self.view addSubview: imageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSData *)reverseData:(NSData *)data {
    const char *bytes = [data bytes];
    int idx = [data length] - 1;
    char *reversedBytes = calloc(sizeof(char),[data length]);
    for (int i = 0; i < [data length]; i++) {
        reversedBytes[idx--] = bytes[i];
    }
    NSData *reversedData = [NSData dataWithBytes:reversedBytes length:[data length]];
    free(reversedBytes);
    return reversedData;
}

@end
