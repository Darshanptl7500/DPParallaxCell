//
//  DPParallaxCell.swift
//  DPParallaxCell
//
//  Created by Darshan Patel on 7/29/15.
//  Copyright (c) 2015 Darshan Patel. All rights reserved.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Darshan Patel
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

class DPParallaxCell: UITableViewCell {
    
    @IBOutlet weak var imgParallax: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    func cellParallax(tableView: UITableView!,view: UIView!)
    {
        let rect = tableView.convertRect(self.frame, toView: view)
        
        let distanceFromCenter = (CGRectGetHeight(view.frame)/2) - CGRectGetMinY(rect)
        
        let difference = CGRectGetHeight(self.imgParallax.frame) - CGRectGetHeight(self.frame)
        
        let move = (distanceFromCenter / CGRectGetHeight(view.frame)) * difference
        
        var imageRect = self.imgParallax.frame
       
        imageRect.origin.y = -(difference/2) + move
        
        self.imgParallax.frame = imageRect
        
        
    }
    
}
