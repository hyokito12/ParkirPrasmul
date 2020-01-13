//
//  KondisiParkirTableViewCell.swift
//  ParkirPrasmul
//
//  Created by Aditya Sanjaya on 12/01/20.
//  Copyright © 2020 Aditya. All rights reserved.
//

import UIKit

class KondisiParkirTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var hdView: UIView!
    @IBOutlet weak var slotParkir: UILabel!
    @IBOutlet weak var noPlat: UILabel!
    @IBOutlet weak var jenKendaraan: UILabel!
    @IBOutlet weak var pengendara: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bgView.layer.cornerRadius = 10
        hdView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
