//
//  ViewController.swift
//  ParkirPrasmul
//
//  Created by Aditya Sanjaya on 12/01/20.
//  Copyright © 2020 Aditya. All rights reserved.
//

import UIKit

class TampilanHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaults = UserDefaults.standard
        if let identitasParkir = defaults.object(forKey: "parkirE") as? Data {
            let decoder = JSONDecoder()
            if let loadedParkir = try? decoder.decode(identitasKendaraan.self, from: identitasParkir){
                print(loadedParkir)
            }
        }
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

