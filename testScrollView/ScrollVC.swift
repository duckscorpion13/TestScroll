//
//  ViewController.swift
//  testScrollView
//
//  Created by DerekYang on 2019/7/4.
//  Copyright © 2019 楊健麟. All rights reserved.
//

import UIKit

class ScrollVC: UIViewController {
    let m_count = 3
    let m_scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = UIColor.black
        scroll.showsHorizontalScrollIndicator = false
        scroll.isPagingEnabled = true
        return scroll
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(self.m_scrollView)
        self.m_scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.m_scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        self.m_scrollView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        self.m_scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        self.m_scrollView.contentSize = CGSize(width: view.frame.size.width * CGFloat(self.m_count), height: view.frame.size.height)
        let colors = [UIColor.blue, UIColor.red, UIColor.yellow]
        for i in 0..<colors.count {
            let subView = UIView(frame: CGRect(x:  view.frame.size.width * CGFloat(i), y: 0, width: view.frame.size.width, height:  view.frame.size.height))
            subView.backgroundColor = colors[i]
            self.m_scrollView.addSubview(subView)
        }
    }


}

