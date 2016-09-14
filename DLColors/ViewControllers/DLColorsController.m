//
//  DLColorsController.m
//  DLColors
//
//  Created by Dalang on 16/9/13.
//  Copyright © 2016年 SYH. All rights reserved.
//

#import "DLColorsController.h"
#import "DLColorEntity.h"
#import "UIColor+DLHex.h"
#import "UIColor+DLComponent.h"

@interface DLColorsController ()

@property (nonatomic, strong) NSDictionary *dataSource;

@end

@implementation DLColorsController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    _dataSource = [DLColorEntity dataSourceForColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSArray *colors = [_dataSource objectForKey:kDLColorClassificationKey];
    return colors.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *colors = [[_dataSource objectForKey:kDLColorsKey] objectAtIndex:section];
    return colors.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DLColors" forIndexPath:indexPath];
    
    NSArray *colors = [[_dataSource objectForKey:kDLColorsKey] objectAtIndex:indexPath.section];
    DLColorEntity *colorEntity = [colors objectAtIndex:indexPath.row];
    cell.contentView.backgroundColor = colorEntity.color;

    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSArray *colors = [_dataSource objectForKey:kDLColorClassificationKey];
    return [colors objectAtIndex:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *colors = [[_dataSource objectForKey:kDLColorsKey] objectAtIndex:indexPath.section];
    DLColorEntity *colorEntity = [colors objectAtIndex:indexPath.row];

    NSLog(@"\n%@: %@\nHex: %@\nRGBA: %@", colorEntity.colorName, colorEntity.chinessDescription, [colorEntity.color dl_HEXString], [colorEntity.color dl_RGBADescription]);
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
