//
//  ViewController.swift
//  UIScrollViewWithUITableView
//
//  Created by EthanLin on 2018/1/9.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var myScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //處理第一個TableView
        //先找到mainStoryboard這樣初始化才可以從mainStoryboard所想要的ViewController開始
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = mainStoryboard.instantiateViewController(withIdentifier: "firstTableView") as! FirstViewController
        
        //處理第二個TableView
        //先找到mainStoryboard這樣初始化才可以從mainStoryboard所想要的ViewController開始
        let secondViewController = mainStoryboard.instantiateViewController(withIdentifier: "secondTableView") as! SecondViewController

        //設定第二個TableView的起始位置
        var frame2ForSecondViewController = secondViewController.view.frame
        frame2ForSecondViewController.origin.x = self.view.frame.size.width
        secondViewController.view.frame = frame2ForSecondViewController
        
        
        //加到畫面上
        self.addChildViewController(firstViewController)
        self.myScrollView.addSubview(firstViewController.view)
        firstViewController.didMove(toParentViewController: self)
        
        
        self.addChildViewController(secondViewController)
        self.myScrollView.addSubview(secondViewController.view)
        secondViewController.didMove(toParentViewController: self)
        
        //設定UIScrollView的大小
        myScrollView.contentSize = CGSize(width: self.view.frame.width * 2, height: self.view.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

