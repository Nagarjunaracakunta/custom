//
//  ViewController.m
//  Custom
//
//  Created by NAGARJUNA on 04/05/17.
//  Copyright © 2017 NAGARJUNA. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"
@interface ViewController ()

@end
//Hello Vinayaka
@implementation ViewController
{
    NSArray *tableData;
    NSArray *thumbnails;
    NSArray *prepTime;
    IBOutlet UITableView *tableView1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    thumbnails = [NSArray arrayWithObjects:@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png",@"Button_Default.png", nil];
    prepTime = [NSArray arrayWithObjects:@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",@"PrepTime:30mints",nil];

    // Do any additional setup after loading the view, typically from a nib.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
