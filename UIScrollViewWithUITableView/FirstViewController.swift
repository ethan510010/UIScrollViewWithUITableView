//
//  FirstViewController.swift
//  UIScrollViewWithUITableView
//
//  Created by EthanLin on 2018/1/9.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data = ["apple","banana","mango"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let firstTableViewCell = tableView.dequeueReusableCell(withIdentifier: "firstTableViewCell", for: indexPath)
        firstTableViewCell.textLabel?.text = data[indexPath.row]
        return firstTableViewCell
    }
    

    @IBOutlet weak var firstTableView: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

       firstTableView.delegate = self
       firstTableView.dataSource = self


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
