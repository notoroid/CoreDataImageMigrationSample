//
//  DetailViewController.m
//  CoreDataImageMigrationSample
//
//  Created by 能登 要 on 2013/11/16.
//  Copyright (c) 2013年 Irimasu Densan Planning. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem){
// TODO: DetaModel version1 はこちらを呼び出す事
#if 1
        NSData* imageData = [self.detailItem valueForKey:@"imageData"];
#else
// TODO: DetaModel version2 はこちらを呼び出す事
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentDirectory = [paths objectAtIndex:0];
        
        NSString* imageDataPath = [self.detailItem valueForKey:@"imagePath"];
        NSString* abstructImageDataPath = [documentDirectory stringByAppendingPathComponent:imageDataPath];
        
        NSData* imageData = [NSData dataWithContentsOfFile:abstructImageDataPath];
#endif
        UIImage* image = [UIImage imageWithData:imageData];
        self.imageView.image = image;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
