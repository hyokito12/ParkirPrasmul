//
//  KondisiParkirTableViewCell.swift
//  ParkirPrasmul
//
//  Created by Aditya Sanjaya on 12/01/20.
//  Copyright © 2020 Aditya. All rights reserved.
//

import UIKit

class KondisiParkirTableViewCell: UITableViewCell {
    
    @IBOutlet weak var slotParkir: UILabel!
    @IBOutlet weak var noPlat: UILabel!
    @IBOutlet weak var jenKendaraan: UILabel!
    @IBOutlet weak var pengendara: UILabel!
    @IBOutlet weak var durasi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
