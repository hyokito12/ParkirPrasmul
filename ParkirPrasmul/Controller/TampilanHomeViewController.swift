//
//  ViewController.swift
//  ParkirPrasmul
//
//  Created by Aditya Sanjaya on 12/01/20.
//  Copyright © 2020 Aditya. All rights reserved.
//

import UIKit

class TampilanHomeViewController: UIViewController {

    @IBOutlet weak var masukButton: UIButton!
    @IBOutlet weak var keluarButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        masukButton.layer.cornerRadius = 20
        keluarButton.layer.cornerRadius = 20
    }
    
    //Fungsi untuk tombol masuk kendaraan
    @IBAction func parkirMasukButton(_ sender: Any) {
        performSegue(withIdentifier: "HomeMasuk", sender: nil)
    }
    
    //Fungsi untuk tombol keluar kendaraan
    @IBAction func parkirKeluarButton(_ sender: Any) {
        performSegue(withIdentifier: "HomeKeluar", sender: nil)
    }
    
}

