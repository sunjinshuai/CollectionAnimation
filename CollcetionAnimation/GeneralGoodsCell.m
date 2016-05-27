//
//  GeneralGoodsCell.m
//  FXBEST
//
//  Created by 孙金帅 on 15/1/28.
//  Copyright (c) 2015年 51fanxing. All rights reserved.
//

#import "GeneralGoodsCell.h"

@interface GeneralGoodsCell ()

@property (weak, nonatomic) IBOutlet UIView *animationView;
@property (weak, nonatomic) IBOutlet UILabel *babyNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageurl;

- (IBAction)dismissAnimationView:(UIButton *)button;
- (IBAction)popAnimationView:(UIButton *)button;

@end
@implementation GeneralGoodsCell

- (void)awakeFromNib
{

    self.animationView.transform = CGAffineTransformMakeTranslation(self.animationView.bounds.size.width + self.contentView.bounds.size.width, 0);
    
    self.babyNameLabel.font = [UIFont systemFontOfSize:12];

}

- (IBAction)dismissAnimationView:(UIButton *)button
{
    [UIView animateWithDuration:1 animations:^{
        self.animationView.transform = CGAffineTransformMakeTranslation(self.animationView.bounds.size.width + self.contentView.bounds.size.width, 0);
    }];

}

- (IBAction)popAnimationView:(UIButton *)button
{
    [UIView animateWithDuration:1 animations:^{
        self.animationView.transform = CGAffineTransformIdentity;
    }];
}

@end
