//
//  ViewController.swift
//  ListProject
//
//  Created by SUP'Internet 05 on 25/10/2018.
//  Copyright © 2018 SUP'Internet 05. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! MyCellTableViewCell
        cell.prepareView(index: indexPath.row)
        return cell
    }
    
    var tableView: UITableView!
    let array = ["Jean", "Emir"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.frame)
        tableView.register(MyCellTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcontroller = MyViewController()
        
        
        
        navigationController?.pushViewController(vcontroller, animated: true)
    }

}

extension UIView {
    
    func addSubviewGrid(_ view: UIView, grid: [CGFloat]) {
        view.frame = CGRect(x: self.frame.width/12*CGFloat(grid[0]), y: self.frame.height/12*CGFloat(grid[1]), width: self.frame.width/12*CGFloat(grid[2]), height: self.frame.height/12*CGFloat(grid[3]))
        self.addSubview(view)
    }
}

