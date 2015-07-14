//
//  ViewController.m
//  SpringyCollectionView
//
//  Created by David Roberts on 13/07/2015.
//  Copyright © 2015 Dave Roberts. All rights reserved.
//

#import "ViewController.h"
#import "SpringCollectionViewFlowLayout.h"

@interface ViewController () <UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.myCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    SpringCollectionViewFlowLayout *layout = (SpringCollectionViewFlowLayout*)self.myCollectionView.collectionViewLayout;
    layout.itemSize = CGSizeMake(100, 100);
    layout.minimumInteritemSpacing = 30;
    layout.minimumLineSpacing = 30;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 300;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor redColor];
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
