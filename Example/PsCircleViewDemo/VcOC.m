//
//  VcOC.m
//  PsCircleViewDemo
//
//  Created by Poison on 2021/5/29.
//

#import "VcOC.h"
#import "PsCircleViewDemo-Swift.h"
@interface VcOC ()
@property (strong,nonatomic)PsCircleView* psCircleV2;
@property (strong, nonatomic) IBOutlet PsCircleView *psCircleV;
@property (strong,nonatomic)VC1* vc1;
@property (strong,nonatomic)VC2* vc2;
@property (strong,nonatomic)VC3* vc3;

@property (strong,nonatomic)VC1* vc1a;
@property (strong,nonatomic)VC2* vc2a;
@property (strong,nonatomic)VC3* vc3a;

@end

@implementation VcOC




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.vc1a = [[VC1 alloc]init];
    self.vc2a = [[VC2 alloc]init];
    self.vc3a = [[VC3 alloc]init];
    
    
    self.psCircleV.views = [NSArray arrayWithObjects :self.vc1a.view,self.vc2a.view,self.vc3a.view, nil];
   
    self.psCircleV.isVertical = false;
    self.psCircleV.autoScroll = true;
        self.psCircleV.timeInterval = 2;
    [self.psCircleV didSelectWithBlock:^(NSInteger index) {
            NSLog(@"垂直视图选中了%ld列",index);
    }];
    
    
    
    
    self.psCircleV2 = [[PsCircleView alloc]init];
    //添加3个纯代码的 UIView,
    //add 3 view only by coding without Contrllor or xib
    [self.view addSubview:self.psCircleV2];
    self.vc1 = [[VC1 alloc]init];
    self.vc2 = [[VC2 alloc]init];
    self.vc3 = [[VC3 alloc]init];
    
    self.psCircleV2.views = [NSArray arrayWithObjects :self.vc1.view,self.vc2.view,self.vc3.view, nil];
   
    self.psCircleV2.isVertical = true;
    self.psCircleV2.autoScroll = true;
        self.psCircleV2.timeInterval = 2;
    [self.psCircleV2 didSelectWithBlock:^(NSInteger index) {
            NSLog(@"垂直视图选中了%ld列",index);
    }];
    
    
}
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    self.psCircleV2.frame = CGRectMake(20, 500, self.view.bounds.size.width - 40, 300);
    
}

@end
