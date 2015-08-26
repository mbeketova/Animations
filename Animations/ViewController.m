//
//  ViewController.m
//  Animations
//
//  Created by Admin on 26.08.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ViewController.h"
#import "Animations.h"

/*
 Анимация вьюшек с толчком
 Смена цвета кнопок
 */

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *viewRed;
@property (weak, nonatomic) IBOutlet UIView *viewGreen;
@property (weak, nonatomic) IBOutlet UIButton *buttonRed;
@property (weak, nonatomic) IBOutlet UIButton *buttonGreen;

@end

@implementation ViewController {
   BOOL isViewRed;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self start_View];
    isViewRed = YES;
    [self.buttonRed addTarget:self action:@selector(action_ViewRed) forControlEvents:UIControlEventTouchUpInside];
    [self.buttonGreen addTarget:self action:@selector(action_ViewGreen) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) start_View {
    self.buttonRed.backgroundColor = [UIColor redColor];
    self.buttonRed.titleLabel.textColor = [UIColor blackColor];
    self.buttonRed.layer.cornerRadius = 3;
    self.buttonGreen.titleLabel.textColor = [UIColor blackColor];
    self.buttonGreen.backgroundColor = [UIColor whiteColor];
    self.buttonGreen.layer.cornerRadius = 3;
    
    self.viewRed.alpha = 1;
    [Animations moveViewRight:self.viewGreen Alpha:0 OriginX:320];
    
}

- (void) action_ViewRed {
    if (!isViewRed) {
        // делаем выезд вью:
        [Animations moveViewRight:self.viewGreen Alpha:0 OriginX:320];
        [Animations moveViewRight:self.viewRed Alpha:1 OriginX:320];
        //делаем смену цвета у кнопок:
        [Animations change_CH_View:self.buttonRed Color:[UIColor redColor]];
        [Animations change_CH_View:self.buttonGreen Color:[UIColor whiteColor]];
        isViewRed = YES;
        
    }
    
}

- (void) action_ViewGreen {
    if (isViewRed) {
        [Animations moveViewLeft:self.viewRed Alpha:0 OriginX:320];
        [Animations moveViewLeft:self.viewGreen Alpha:1 OriginX:320];
        
        [Animations change_CH_View:self.buttonRed Color:[UIColor whiteColor]];
        [Animations change_CH_View:self.buttonGreen Color:[UIColor greenColor]];
        isViewRed = NO;
    }
    
}

@end
