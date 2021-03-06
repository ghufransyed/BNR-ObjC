//
//  BNRDocument.m
//  TahDoodle2
//
//  Created by Ghufran Syed on 8/23/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRDocument.h"

@implementation BNRDocument

#pragma mark - NSDocument Overrides

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"BNRDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    
    NSData *data = [NSPropertyListSerialization dataWithPropertyList:self.tasks
                                                              format:NSPropertyListXMLFormat_v1_0
                                                             options:0
                                                               error:outError];
    return data;
    
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
//    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
//    @throw exception;
//    return nil;
}

- (BOOL)readFromData:(NSData *)data
              ofType:(NSString *)typeName
               error:(NSError **)outError
{
    self.tasks = [NSPropertyListSerialization propertyListWithData:data
                                                           options:NSPropertyListMutableContainers
                                                            format:NULL
                                                             error:outError];
    return (self.tasks != nil);
    
    
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
//    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
//    @throw exception;
//    return YES;
}

#pragma mark - Actions

-(void) addTask:(id)sender
{
    // NSLog(@"Add Task Button clicked!");
    if (!self.tasks) {
        self.tasks = [NSMutableArray array];
    }
    [self.tasks addObject:@"New Item"];
    [self.taskTable reloadData];
    [self updateChangeCount:NSChangeDone];
}

-(void) deleteTask:(id)sender
{
    if (self.taskTable.selectedRow >= 0) {
        [self.tasks removeObjectAtIndex:self.taskTable.selectedRow];
        [self.taskTable reloadData];
        [self updateChangeCount:NSChangeDone];
    }
}

#pragma mark Data Source Methods
- (NSInteger) numberOfRowsInTableView:(NSTableView *)tv
{
    return [self.tasks count];
}


- (id) tableView:(NSTableView *)tableView
objectValueForTableColumn:(NSTableColumn *)tableColumn
             row:(NSInteger)row

{
    return [self.tasks objectAtIndex:row];
    
}

- (void) tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    [self.tasks replaceObjectAtIndex:row withObject:object];
    [self updateChangeCount:NSChangeDone];
}




@end
