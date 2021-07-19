//
//  PalettesViewController.m
//  RSSchool_T8
//
//  Created by Таня Василёнок on 18.07.21.
//

#import "PalettesViewController.h"
#import "UIColor+UIColorCategory.h"

@interface PalettesViewController ()
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) ArtistViewController *artistVC;
@property (weak, nonatomic) NSArray *palettesButtonsArray;
@end

@implementation PalettesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self setDefaultStyleForView];
    [self addSaveButtonToView];
    
    [self.saveButton addTarget:self
                        action:@selector(saveButtonTapped:)
                     forControlEvents:UIControlEventTouchUpInside];
    
    [self addPalettesButtons];

    for (UIButton *button in self.palettesButtonsArray) {
        [button addTarget:self
                   action:@selector(paletteButtonTapped:)
         forControlEvents:UIControlEventTouchUpInside];
    }
    
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

- (void)addSaveButtonToView {
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

// MARK: Remove child View Controller
- (IBAction)saveButtonTapped:(UIButton *)sender {
    [self willMoveToParentViewController:self.artistVC];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}

- (NSArray *)addPalettesButtons {
    NSMutableArray *paletteButtonsArray = [NSMutableArray new];
    
    NSArray *colorsArray = [[NSArray alloc] initWithObjects:UIColor.customRed,
                                                            UIColor.customDarkBlue,
                                                            UIColor.customLightGreen,
                                                            UIColor.customLightGrey,
                                                            UIColor.customPurple,
                                                            UIColor.customPeach,
                                                            UIColor.customOrange,
                                                            UIColor.customLightBlue,
                                                            UIColor.customPink,
                                                            UIColor.customDarkGrey,
                                                            UIColor.customDarkGreen,
                                                            UIColor.customBordeaux,
                                                            nil];
    
    float x = 17, y = 92.0, width = 40.0, height = 40.0;
    for (int i = 0; i <= 5; i++) {
        UIButton *paletteButton = [UIButton new];
        paletteButton.frame = CGRectMake(x, y, width, height);
        paletteButton.backgroundColor = colorsArray[i];
        [self.view addSubview:paletteButton];
        [self setDefaultStulesForButtons:paletteButton];
        [paletteButtonsArray addObject:paletteButton];
        x += 60;
    }
    
    x = 17.0; y = 152.0;
    for (int i = 6; i <= 11; i++) {
        UIButton *paletteButton = [UIButton new];
        paletteButton.frame = CGRectMake(x, y, width, height);
        paletteButton.backgroundColor = colorsArray[i];
        [self.view addSubview:paletteButton];
        [self setDefaultStulesForButtons:paletteButton];
        [paletteButtonsArray addObject:paletteButton];
        x += 60;
    }
    self.palettesButtonsArray = paletteButtonsArray;
    return self.palettesButtonsArray;
}

- (void)setDefaultStulesForButtons:(UIButton *)button {
    button.layer.cornerRadius = 10.0;
    button.layer.borderWidth = 8.0;
    button.layer.borderColor = UIColor.whiteColor.CGColor;
    button.layer.shadowColor = UIColor.blackColor.CGColor;
    button.layer.shadowOpacity = 0.25;
    button.layer.shadowRadius = 2.0;
    button.layer.shadowOffset = CGSizeMake(0, 0);
}

- (IBAction)paletteButtonTapped:(UIButton *)sender {
    sender.layer.borderWidth = 1.0;
    self.view.backgroundColor = sender.backgroundColor;
}

@end
