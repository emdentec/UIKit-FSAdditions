    //
//  FSTableViewController.m
//  
//
//  Created by Elliot Neal on 19/01/2011.
//  Copyright 2011 emdentec. All rights reserved.
//

#import "FSTableViewController.h"


@implementation FSTableViewController

@synthesize tableView = tableView_;
@synthesize clearsSelectionOnViewWillAppear = clearsSelectionOnViewWillAppear_;


#pragma mark -
#pragma mark View Lifecycle

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	if (self.clearsSelectionOnViewWillAppear)
		[self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	
	[self.tableView flashScrollIndicators];
}

- (void)viewDidUnload {
    [super viewDidUnload];
	
	self.tableView = nil;
}


#pragma mark -
#pragma mark UIViewController Overrides

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
	[super setEditing:editing animated:animated];
	
	[self.tableView setEditing:editing animated:animated];
}


#pragma mark -
#pragma mark UITableViewDataSource Blank Signatures

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section { return 0; }
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath { return nil; }


#pragma mark -
#pragma mark Memory Management

- (void)dealloc {
	
	self.tableView = nil;
	
    [super dealloc];
}


@end
