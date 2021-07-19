//
//  TimerViewController.m
//  RSSchool_T8
//
//  Created by Таня Василёнок on 18.07.21.
//

#import "TimerViewController.h"
#import "UIColor+UIColorCategory.h"

@interface TimerViewController ()
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) ArtistViewController *artistVC;
@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setDefaultStyleForView];
    
    [self addsaveButtonToView];
    
    [self.saveButton addTarget:self
                        action:@selector(saveButtonTapped:)
                     forControlEvents:UIControlEventTouchUpInside];
}

- (void)setDefaultStyleForView {
    self.view.backgroundColor = UIColor.whiteColor;
    self.view.layer.cornerRadius = 40.0;
    self.view.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    self.view.layer.shadowColor = UIColor.blackColor.CGColor;
    self.view.layer.shadowOpacity = 0.25;
    self.view.layer.shadowRadius = 8.0;
    self.view.layer.shadowOffset = CGSizeMake(0, 0);
}

- (void)addsaveButtonToView {
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(250.0, 20.0, 85.0, 32.0)];
    [button setTitle:@"Save" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    button.backgroundColor = UIColor.whiteColor;
    button.layer.cornerRadius = 10.0;
    button.layer.shadowColor = UIColor.blackColor.CGColor;
    button.layer.shadowOpacity = 0.25;
    button.layer.shadowRadius = 2.0;
    button.layer.shadowOffset = CGSizeMake(0, 0);
    button.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    button.titleEdgeInsets = UIEdgeInsetsMake(70.0, 9.0, 70.0, 9.0);
    [button setTitleColor:UIColor.customLightGreenForButtonTitle forState:normal];
    self.saveButton = button;
}

- (IBAction)saveButtonTapped:(UIButton *)sender {
    [self willMoveToParentViewController:self.artistVC];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}


@end
