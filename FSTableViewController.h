//
//  FSTableViewController.h
//  
//
//  Created by Elliot Neal on 19/01/2011.
//  Copyright 2011 emdentec. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FSTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {

@private
	UITableView *tableView_;
	
	BOOL clearsSelectionOnViewWillAppear_;
}

@property (nonatomic, retain) IBOutlet UITableView *tableView;

@property (nonatomic) BOOL clearsSelectionOnViewWillAppear;

@end
