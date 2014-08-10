//
//  NHLocationTableViewController.m
//  Burger Wait Time
//
//  Created by mrhsu on 8/3/14.
//  Copyright (c) 2014 Jibberish. All rights reserved.
//

#import "NHLocationTableViewController.h"
#import "NHStores.h"
#import "NHStoreObject.h"

@interface NHLocationTableViewController ()

@end

@implementation NHLocationTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.storeLocation = [[NSMutableArray alloc]init];
    
    for (NSMutableDictionary *storeData in [NHStores allKnownStores])
    {
        NSString *imageName = [NSString stringWithFormat:@"%@.png", storeData [STORE_NICKNAME]];
        
        NHStoreObject *store = [[NHStoreObject alloc] initWithData:storeData andImage:[UIImage imageNamed:imageName]];
        
        [self.storeLocation addObject: store];
        
    }
    
    
//    NSString *storeLocation1 = @"Westwood";
//    NSString *storeLocation2 = @"Culver City";
//    NSString *storeLocation3 = @"LAX";
//    NSString *storeLocation4 = @"Venice";
//    
//    [self.storeLocation addObject:storeLocation1];
//    [self.storeLocation addObject:storeLocation2];
//    [self.storeLocation addObject:storeLocation3];
//    [self.storeLocation addObject:storeLocation4];
//    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.storeLocation count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *CellIdentifier = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NHStoreObject *store = [self.storeLocation objectAtIndex:indexPath.row];
    cell.textLabel.text = store.nickName;
    cell.detailTextLabel.text = store.storeAddress;
    cell.imageView.image = store.storeImage;
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor redColor];
    cell.detailTextLabel.textColor = [UIColor colorWithWhite:0.5 alpha:1.0];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
