//
//  ViewController.m
//  liineLayout
//
//  Created by LNXD1 on 16/8/10.
//  Copyright © 2016年 LNXD1. All rights reserved.
//

#import "ViewController.h"
#import "LineCollectionViewCell.h"
#import "LineLayout.h"
@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *LineCollectView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configUI];
}

-(void)configUI
{
    [_LineCollectView registerClass:[LineCollectionViewCell class] forCellWithReuseIdentifier:@"LineCollectionViewCell"];
    _LineCollectView.contentInset = UIEdgeInsetsMake(0, 25, 0, 25);
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 30;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    LineCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"LineCollectionViewCell" forIndexPath:indexPath];
    cell.cellLab.text = [NSString stringWithFormat:@"%ld",indexPath.item];
    return cell;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%lf", scrollView.contentOffset.x);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
