//
//  ViewController.swift
//  UIScrollView_horizontal
//
//  Created by Kien Nguyen on 2021-07-12.
//

import UIKit


// Add 1 more protocol: UIScrollViewDelegate:

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var contentWidth:CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for image in 0...2{
            
            let imageToDisplay = UIImage(named: "\(image).png")
            
            let imageView = UIImageView(image: imageToDisplay)
            
            let xCoordinate = view.frame.midX + view.frame.width * CGFloat(image)
            
            contentWidth += view.frame.width
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: xCoordinate - 50, y: (view.frame.height / 2) - 50, width: 100, height: 100)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
        
    }

//Add  one function scrollViewDidScroll :
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        print(scrollView.contentOffset)
        //pageControl.currentPage =
    }
}

