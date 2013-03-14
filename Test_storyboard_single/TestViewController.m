//
//  TestViewController.m
//  Test_storyboard_single
//
//  Created by shimi on 13-3-12.
//  Copyright (c) 2013年 com.shimi. All rights reserved.
//

#import "TestViewController.h"
#import "ItemModel.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ItemModel *model=[ItemModel itemModel];
    
    self.titleLabel.text = model.title;
    self.titleLabel.textColor = [UIColor blackColor];
    self.titleLabel.font = [UIFont fontWithName:@"FZZhongDengXian-Z07S" size:16];
    self.titleLabel.backgroundColor = [UIColor clearColor];
    
    //图片
    NSURL *imageUrl = [NSURL URLWithString:model.images];
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:imageUrl]];
    self.imageView.image=image;
    //价格
    self.priceLabel.text=[NSString stringWithFormat:@"%@%@",@"价格：￥",[model price]];
    self.priceLabel.font = [UIFont systemFontOfSize:14];
    self.priceLabel.textColor = [UIColor redColor];
    //描述
    self.descriptionLabel.text = [model description];
    self.descriptionLabel.textColor = [UIColor blackColor];
    self.descriptionLabel.font = [UIFont systemFontOfSize:14.0f];
    self.descriptionLabel.numberOfLines = 0;//相当于不限制行数

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
