# JKTableView

[![CI Status](http://img.shields.io/travis/JKTableView/JKTableView.svg?style=flat)](https://travis-ci.org/JKTableView/JKTableView)
[![Version](https://img.shields.io/cocoapods/v/JKTableView.svg?style=flat)](http://cocoapods.org/pods/JKTableView)
[![License](https://img.shields.io/cocoapods/l/JKTableView.svg?style=flat)](http://cocoapods.org/pods/JKTableView)
[![Platform](https://img.shields.io/cocoapods/p/JKTableView.svg?style=flat)](http://cocoapods.org/pods/JKTableView)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

JKTableView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "JKTableView"
```

## Requirements

#### import both data sources for used this control 
- (NSInteger)numberOfItemsInRecyclingScrollView:(JKScrollCell *)scrollView {

return 200;
}


- (UIView *)recyclingScrollView:(JKScrollCell *)scrollView
cellForItemAtIndex:(NSInteger)index {

UIImageView *cell = [scrollView dequeueReusableCell];
if (!cell) {
cell = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 235)];
}
return cell;
}

## Author

JKTableView, jitu94186@gmail.com

## License

JKTableView is available under the MIT license. See the LICENSE file for more info.
