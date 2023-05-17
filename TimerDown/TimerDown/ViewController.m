//
//  ViewController.m
//  TimerDown
//
//  Created by HPDOG on 2023/5/16.
//

#import "ViewController.h"
#import "CountDownTimeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView* img= [[UIImageView alloc]init];
    [self.view addSubview:img];
    [img mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
        make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight);
        make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
        make.left.equalTo(self.view.mas_safeAreaLayoutGuideLeft);
    }];
    img.backgroundColor = [UIColor blackColor];
    
    CountDownTimeView * timeView = [[CountDownTimeView alloc] initWithCountDownTimeType:CountDownTimeType_Word backView:img];
    [self.view addSubview:timeView];
    [timeView startTimer];
}


@end
