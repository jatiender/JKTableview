# JKTableview
Create a listview like UITableView using a UIScrollView
Deque each and every cells using below mentioned methods :
//Pass Number of rows
- (NSInteger)numberOfItemsInRecyclingScrollView:(JKScrollCell *)scrollView : 
//Create your custom cell or View to be loaded as content in every cell of scroll
- (UIView *)recyclingScrollView:(JKScrollCell *)scrollView :


Just import JKScrollCell.h & JKscrollCell.m , then declare <JKScrollDataSource> 

