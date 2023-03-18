//
//  DetailViewController.swift
//  homeW-4
//
//  Created by Nurjamal Mirbaizaeva on 17/3/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var pricelabel: UILabel!
    @IBOutlet weak var detailslabel: UILabel!
    
    @IBOutlet weak var heart: UIButton!
    
    var name2: String = "empty"
    var price2 = "empty"
    var room = "empty"
    var colors = "empty"
    var materials = "empty"
    var dimen = "empty"
    var weight = "empty"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        heart.setImage(UIImage(systemName: "heart"), for:.normal)

        namelabel.text = name2
        pricelabel.text = price2
        label.text = "Room Type\nColor\nMaterial\nDimensions\nWeight"
        detailslabel.text = "\(room)\n\(colors)\n\(materials)\n\(dimen)\n\(weight)"
    }
    
    var changecClor = true
    @IBAction func heart(_ sender: Any) {
        if changecClor{
            heart.setImage(UIImage(systemName: "heart.fill"), for:.normal)
        }else{
            heart.setImage(UIImage(systemName: "heart"), for:.normal)
        }
        changecClor = !changecClor
    }
    
}

