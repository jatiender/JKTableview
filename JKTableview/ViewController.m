//
//  ViewController.m
//  JKTableview
//
//  Created by Zakoopi on 07/03/16.
//  Copyright © 2016 JK. All rights reserved.
//

#import "ViewController.h"
#import "JKScrollCell.h"
@interface ViewController ()<JKScrollDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect bounds = [[self view] bounds];
    CGSize itemSize = CGSizeMake(self.view.frame.size.width, 255.0);
    CGRect scrollFrame;
    scrollFrame.size = itemSize;
    scrollFrame.origin.x = floor(0.5 * (bounds.size.width - itemSize.width));
    scrollFrame.origin.y = floor(0.1 * (bounds.size.height - itemSize.height));
    
    JKScrollCell *scrollView = [[JKScrollCell alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [scrollView setDataSource:self];
    scrollView.bounces = NO;
    
    
    [scrollView setItemSize:itemSize];
    [[self view] addSubview:scrollView];
    
    /* === For demonstration purposes only === */
    [[scrollView layer] setBorderWidth:2.0];
    //    [[scrollView layer] setBorderColor:[[UIColor greenColor] CGColor]];
    [scrollView setShowsHorizontalScrollIndicator:NO];
    [scrollView setClipsToBounds:NO];

    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)numberOfItemsInRecyclingScrollView:(JKScrollCell *)scrollView {
    
    return 200;
}

- (UIView *)recyclingScrollView:(JKScrollCell *)scrollView
             cellForItemAtIndex:(NSInteger)index {
    
    UIImageView *cell = [scrollView dequeueReusableCell];
    if (!cell) {
        cell = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 235)];
    }
    [cell setImage:[UIImage imageNamed:@"images.jpeg"]];
    [[cell layer] setBorderColor:[[UIColor greenColor] CGColor]];
    UIView *bottom=[[UIView alloc ]initWithFrame:CGRectMake(0, 250, self.view.frame.size.width, 5)];
    bottom.backgroundColor=[UIColor whiteColor];
    [cell addSubview:bottom];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
