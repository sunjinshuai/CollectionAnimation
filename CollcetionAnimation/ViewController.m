//
//  ViewController.m
//  CollcetionAnimation
//
//  Created by 孙金帅 on 16/5/27.
//  Copyright © 2016年 com.51fanxing. All rights reserved.
//

#define FXScreenWidth [UIScreen mainScreen].bounds.size.width
#define FXScreenHeight [UIScreen mainScreen].bounds.size.height
#define FXRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

#import "ViewController.h"
#import "GeneralGoodsCell.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation ViewController

static NSString * const reuseIdentifier = @"GeneralGoodsCell";

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"SUNCollectionViewAnimation";
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"GeneralGoodsCell" bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - Collection View Data Source
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GeneralGoodsCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    return cell;
}

//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((FXScreenWidth - 30) * 0.5, (FXScreenWidth -30) * 0.5 + 76);
}

//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10, 10,10);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - setter and getter
- (UICollectionView *)collectionView
{
    if (_collectionView == nil) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, FXScreenWidth, FXScreenHeight) collectionViewLayout:layout];
        _collectionView.backgroundColor = FXRGBColor(247, 247, 247);
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        [self.view addSubview:_collectionView];
    }
    return _collectionView;
}

@end
