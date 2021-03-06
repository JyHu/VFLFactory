//
//  AUUCase08ViewController.m
//  AUULayout
//
//  Created by JyHu on 2017/4/24.
//
//

#import "AUUCase08ViewController.h"

@implementation AUUCase08ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [UIView generateView];
    UIView *view2 = [UIView generateView];
    
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    
    H[20][view1[10]][AUUGreaterThan(100)][view2[10]][20].end();
    
    //    @[V,V].VFL[0][@[view1,view2]].end();
    VA[@[view1, view2]].end();
    //    上面一句等于下面这两句的合并
    //    V[0][view1][0].end();
    //    V[0][view2][0].end();
    
    UIView *testView1 = [UIView generateView];
    UIView *testView2 = [UIView generateView];
    
    [self.view addSubview:testView1];
    [self.view addSubview:testView2];
    
    H[view1][AUUGreaterThan(50)][testView1[50]][AUULessThan(50)][view2].cut();
    H[view1][AUULessThan(50)][testView2[50]][AUUGreaterThan(50)][view2].cut();
    
    V[100][testView1[50]][50][testView2[50]].cut();
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
