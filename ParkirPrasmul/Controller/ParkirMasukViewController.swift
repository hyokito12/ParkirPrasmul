//
//  ParkirMasukViewController.swift
//  ParkirPrasmul
//
//  Created by Aditya Sanjaya on 12/01/20.
//  Copyright © 2020 Aditya. All rights reserved.
//

import UIKit

class ParkirMasukViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    var slotDipilih = String()
    var slotParkir: [String] = []
    var nomerPlat: [String] = []
    
    override func viewDidAppear(_ animated: Bool) {
        for index in UnicodeScalar("A").value...UnicodeScalar("I").value {
            if let identitasParkir = defaults.object(forKey: "parkir\(UnicodeScalar(index) ?? "O")") as? Data {
                let decoder = JSONDecoder()
                if let loadedParkir = try? decoder.decode(identitasKendaraan.self, from: identitasParkir){
                    slotParkir.append(String(UnicodeScalar(index) ?? "O"))
                    nomerPlat.append(loadedParkir.noPlat)
                }
            }
        }
    }
    
    @IBAction func backHomeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Tombol Slot Parkir
    @IBAction func slotA(_ sender: Any) {
        if slotParkir.contains("A"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "A"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotB(_ sender: Any) {
        if slotParkir.contains("B"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "B"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotC(_ sender: Any) {
        if slotParkir.contains("C"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "C"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotD(_ sender: Any) {
        if slotParkir.contains("D"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "D"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotE(_ sender: Any) {
        if slotParkir.contains("E"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "E"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotF(_ sender: Any) {
        if slotParkir.contains("F"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "F"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotG(_ sender: Any) {
        if slotParkir.contains("G"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "G"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotH(_ sender: Any) {
        if slotParkir.contains("H"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "H"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotI(_ sender: Any) {
        if slotParkir.contains("I"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "I"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier ==  "masukInput"{
            let controller = segue.destination as! InputParkirViewController
            controller.slotParkir = slotDipilih
        }
    }

}
