//
//  EventEntityMigrationPolicy.m
//  CoreDataImageMigrationSample
//
//  Created by 能登 要 on 2013/11/16.
//  Copyright (c) 2013年 Irimasu Densan Planning. All rights reserved.
//

#import "EventEntityMigrationPolicy.h"

@implementation EventEntityMigrationPolicy

- (NSString*)imageData:(NSData*)imageData
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    
    NSString* imageDatPath = [NSString stringWithFormat:@"%@.jpg",@(imageData.hash) ];
    NSString* abstructImageDatPath = [documentDirectory stringByAppendingPathComponent:imageDatPath];
    [imageData writeToFile:abstructImageDatPath atomically:YES];
    
    return imageDatPath;
}

@end
