//
//  SecondViewController.swift
//  UIScrollViewWithUITableView
//
//  Created by EthanLin on 2018/1/9.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var sportsData = ["baseball", "baseketball","tennis"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let secondTableViewCell = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell", for: indexPath)
        secondTableViewCell.textLabel?.text = sportsData[indexPath.row]
        return secondTableViewCell
    }
    

    @IBOutlet weak var secondTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTableView.delegate = self
        secondTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
