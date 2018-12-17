//
//  MyCellTableViewCell.swift
//  ListProject
//
//  Created by SUP'Internet 05 on 25/10/2018.
//  Copyright © 2018 SUP'Internet 05. All rights reserved.
//

import UIKit
import MapKit

class MyCellTableViewCell: UITableViewCell {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
    func prepareView(index: Int) {
        let view = MKMapView()
        let view2 = UIImageView()
        let view3 = UIButton()
        view2.image = UIImage(named:"raton.jpeg")
        view3.backgroundColor = .green
        view3.setTitle("click", for: .normal)
        
        self.contentView.addSubviewGrid(view, grid: [0, 0, 4, 10])
        self.contentView.addSubviewGrid(view2, grid: [4, 0, 12, 10])
        self.contentView.addSubviewGrid(view3, grid: [0, 10, 12, 2])
    }

}
