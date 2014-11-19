//
//  AddGroupViewController.m
//  CoreDataTrials
//
//  Created by Roger on 11/19/14.
//  Copyright (c) 2014 Roger Zou. All rights reserved.
//

#import "AddGroupViewController.h"
#import "Group.h"
#import "AppDelegate.h"

@interface AddGroupViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *eventCountTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondsTextField;
@property (weak, nonatomic) IBOutlet UITextField *pausedSecondsTextField;

@end

@implementation AddGroupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonPressed:(id)sender {
    
    AppDelegate *appDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    Group *newGroup = [NSEntityDescription insertNewObjectForEntityForName:@"Group" inManagedObjectContext:managedObjectContext];
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
    [f setNumberStyle:NSNumberFormatterDecimalStyle];
    newGroup.name = self.nameTextField.text;
    newGroup.eventCount = [f numberFromString: self.eventCountTextField.text];
    newGroup.seconds = [f numberFromString:self.secondsTextField.text];
    newGroup.pausedSeconds = [f numberFromString:self.pausedSecondsTextField.text];
    newGroup.events = nil;
    NSError *error;
    if (![managedObjectContext save:&error])
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    //[self dismissViewControllerAnimated:YES completion:nil]; //only works for modal
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
