#Parallax effect in UITableViewCell with images in swift

This project include example of parallax effect on UITableViewCell with UIImageViews when table view is scrolling.


##How To Use

1. Add the `DPParallaxCell.swift` file in your project. This is UITableViewCell subclass. you can customize it as your needs.
2. In your `Viewcontroller.swift` add below method for scrolling of images

```
				
	func scrollViewDidScroll(scrollView: UIScrollView) {
        
        let visibleCells = self.tblParallax.visibleCells()
        
        for cell in visibleCells {
            
            let dpCell = cell as! DPParallaxCell
            
            dpCell.cellParallax(self.tblParallax, view: self.view)
            
        }
        
    }

```
you can see example  for more understanding.

##Compatibility

 - iOS 7.0+

##Reference

- I have taken [JBParallaxCell](https://github.com/jberlana/JBParallaxCell) as reference for implementing in swift.

##License
The MIT License (MIT)

Copyright (c) 2015 Darshan Patel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
