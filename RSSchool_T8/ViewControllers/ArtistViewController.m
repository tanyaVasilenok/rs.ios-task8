//
//  ArtistViewController.m
//  RSSchool_T8
//
//  Created by Таня Василёнок on 17.07.21.
//

#import "ArtistViewController.h"
#import "UIColor+UIColorCategory.h"
#import "PalettesViewController.h"
#import "TimerViewController.h"
#import "RSSchool_T8-Swift.h"

@interface ArtistViewController ()
@property (weak, nonatomic) IBOutlet UIButton *openPaletteButton;
@property (weak, nonatomic) IBOutlet UIButton *openTimerButton;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *drawingsBarButtonItem;
@property (weak, nonatomic) IBOutlet UIView *canvas;
@property (weak, nonatomic) IBOutlet UINavigationItem *artistNavBar;
@property (strong, nonatomic) PalettesViewController *palettesVC;
@property (strong, nonatomic) TimerViewController *timerVC;

@end

@implementation ArtistViewController

@synthesize drawingsVC;

- (void)viewDidLoad {
    [super viewDidLoad];

// MARK: Styles setting
    [self setFramesForButtonsAndCanvas];
    [self setDefaultStyleForButtons:self.openPaletteButton];
    [self setDefaultStyleForButtons:self.openTimerButton];
    [self setDefaultStyleForButtons:self.drawButton];
    [self setDefaultStyleForButtons:self.shareButton];
    [self setDefaultStyleForCanvas];
    [self setDefaultStyleForNavBar];
    
    [self.openPaletteButton addTarget:self
                               action:@selector(openPalettesButtonTapped:)
                     forControlEvents:UIControlEventTouchUpInside];
    
    [self.openTimerButton addTarget:self
                               action:@selector(openTimerButtonTapped:)
                     forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(drawingsRightBarBattonItemTapped:)];
    
    [self setDefaultStyleForBarButtonItems];

}


- (void)setFramesForButtonsAndCanvas {
    self.openPaletteButton.frame = CGRectMake(20.0, 454.0, 163.0, 32.0);
    self.openTimerButton.frame = CGRectMake(20.0, 506.0, 151.0, 32.0);
    self.drawButton.frame = CGRectMake(243.0, 454.0, 91.0, 32.0);
    self.shareButton.frame = CGRectMake(239.0, 506.0, 95.0, 32.0);
    self.canvas.frame = CGRectMake(38.0, 104.0, 300.0, 300.0);
}

- (void)setDefaultStyleForButtons:(UIButton *)button {
    button.backgroundColor = UIColor.whiteColor;
    button.layer.cornerRadius = 10.0;
    button.layer.shadowColor = UIColor.blackColor.CGColor;
    button.layer.shadowOpacity = 0.25;
    button.layer.shadowRadius = 2.0;
    button.layer.shadowOffset = CGSizeMake(0, 0);
    button.titleLabel.font = [UIFont fontWithName:@"Montserrat-Medium" size:18];
    button.titleEdgeInsets = UIEdgeInsetsMake(5.0, 21.0, 5.0, 21.0);
    [button setTitleColor:UIColor.customLightGreenForButtonTitle forState:normal];
    
}

- (void)setDefaultStyleForBarButtonItems {
    [self.navigationItem.rightBarButtonItem setTintColor:UIColor.customLightGreenForButtonTitle];
    
    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:
     @{ NSFontAttributeName:
           [UIFont fontWithName:@"Montserrat-Regular"
                           size:17.0],
       NSForegroundColorAttributeName: [UIColor customLightGreenForButtonTitle] } forState:UIControlStateNormal];

}

- (void)setDefaultStyleForCanvas {
    self.canvas.backgroundColor = UIColor.whiteColor;
    self.canvas.layer.cornerRadius = 8.0;
    self.canvas.layer.shadowColor = UIColor.customLightBlueForCanvasShadow.CGColor;
    self.canvas.layer.shadowOpacity = 1.0;
    self.canvas.layer.shadowRadius = 8.0;
    self.canvas.layer.shadowOffset = CGSizeMake(0, 0);
    
}

- (void)setDefaultStyleForNavBar {
    
}

// MARK: Add child View Controller
- (void)addPalettesViewControllerToArtistViewController {
    self.palettesVC = [PalettesViewController new];
    [self addChildViewController:self.palettesVC];
    self.palettesVC.view.frame = [self frameForPalettesViewController];
    [self.view addSubview:self.palettesVC.view];
    [self.palettesVC didMoveToParentViewController:self];
}

- (void)addTimerViewControllerToArtistViewController {
    self.timerVC = [TimerViewController new];
    [self addChildViewController:self.timerVC];
    self.timerVC.view.frame = [self frameForPalettesViewController];
    [self.view addSubview:self.timerVC.view];
    [self.timerVC didMoveToParentViewController:self];
}

// MARK: Remove child View Controller

//- (void)removePalettesViewControllerFromArtistViewController {
//    [self.palettesVC willMoveToParentViewController:nil];
//    [self.palettesVC.view removeFromSuperview];
//    [self.palettesVC removeFromParentViewController];
//}

//- (void)removeTimerViewControllerFromArtistViewController {
//    [self.timerVC willMoveToParentViewController:nil];
//    [self.timerVC.view removeFromSuperview];
//    [self.timerVC removeFromParentViewController];
//}

- (CGRect)frameForPalettesViewController {
    return CGRectMake(0, 333.0, 375, 333.5);
}

- (IBAction)openPalettesButtonTapped:(id)sender {
    return [self addPalettesViewControllerToArtistViewController];
}

- (IBAction)openTimerButtonTapped:(id)sender {
    return [self addTimerViewControllerToArtistViewController];
}

- (IBAction)drawingsRightBarBattonItemTapped:(id)sender {
    DrawingsViewController *dr = [[DrawingsViewController alloc] init];
    [self.navigationController pushViewController:dr animated:YES];
}


@end
