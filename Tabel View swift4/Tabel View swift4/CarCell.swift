//
//  CarCell.swift
//  Tabel View swift4
//
//  Created by Gunjan  Paul on 15/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit

class CarCell: UITableViewCell {

    @IBOutlet weak var carImge: UIImageView!
    
    @IBOutlet weak var carLabel: UILabel!
    
    func setCar(_ c:Car){
        carImge.image = c.image
        carLabel.text = c.title
    }
    
    
    
}
