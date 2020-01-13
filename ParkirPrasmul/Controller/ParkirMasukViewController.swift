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
    
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonE: UIButton!
    @IBOutlet weak var buttonF: UIButton!
    @IBOutlet weak var buttonG: UIButton!
    @IBOutlet weak var buttonH: UIButton!
    @IBOutlet weak var buttonI: UIButton!
    
    override func viewDidAppear(_ animated: Bool) {
        roundedButton()
        loadingData(){(finished) in
            if finished{
                self.checkData()
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
            slotDipilih = "SLOT A"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotB(_ sender: Any) {
        if slotParkir.contains("B"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "SLOT B"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotC(_ sender: Any) {
        if slotParkir.contains("C"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "SLOT C"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotD(_ sender: Any) {
        if slotParkir.contains("D"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "SLOT D"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotE(_ sender: Any) {
        if slotParkir.contains("E"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "SLOT E"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotF(_ sender: Any) {
        if slotParkir.contains("F"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "SLOT F"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotG(_ sender: Any) {
        if slotParkir.contains("G"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "SLOT G"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotH(_ sender: Any) {
        if slotParkir.contains("H"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "SLOT H"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    @IBAction func slotI(_ sender: Any) {
        if slotParkir.contains("I"){
            print("GAKBISA DIKLIK")
        } else{
            slotDipilih = "SLOT I"
            performSegue(withIdentifier: "masukInput", sender: nil)
        }
    }
    
    func roundedButton(){
        buttonA.layer.cornerRadius = 10
        buttonB.layer.cornerRadius = 10
        buttonC.layer.cornerRadius = 10
        buttonD.layer.cornerRadius = 10
        buttonE.layer.cornerRadius = 10
        buttonF.layer.cornerRadius = 10
        buttonG.layer.cornerRadius = 10
        buttonH.layer.cornerRadius = 10
        buttonI.layer.cornerRadius = 10
    }
    
    func loadingData(completion: @escaping (_ finished: Bool) -> Void){
        for index in UnicodeScalar("A").value...UnicodeScalar("I").value {
            if let identitasParkir = defaults.object(forKey: "parkir\(UnicodeScalar(index) ?? "O")") as? Data {
                let decoder = JSONDecoder()
                if let loadedParkir = try? decoder.decode(identitasKendaraan.self, from: identitasParkir){
                    slotParkir.append(String(UnicodeScalar(index) ?? "O"))
                    nomerPlat.append(loadedParkir.noPlat)
                }
            }
            completion(true)
        }
    }
    
    func checkData(){
        if self.slotParkir.contains("A") {
            self.buttonA.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonA.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else{
            self.buttonA.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonA.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
        }
        if self.slotParkir.contains("B"){
            self.buttonB.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonB.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else{
           self.buttonB.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonB.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
        }
        if self.slotParkir.contains("C"){
            self.buttonC.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonC.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else {
            self.buttonC.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonC.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
        }
        if self.slotParkir.contains("D"){
            self.buttonD.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonD.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else{
            self.buttonD.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonD.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
        }
        if self.slotParkir.contains("E"){
            self.buttonE.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonE.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else{
            self.buttonE.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonE.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
        }
        if self.slotParkir.contains("F"){
            self.buttonF.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonF.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else{
            self.buttonF.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonF.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
        }
        if self.slotParkir.contains("G"){
            self.buttonG.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonG.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else{
            self.buttonG.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonG.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
        }
        if self.slotParkir.contains("H"){
            self.buttonH.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonH.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else{
            self.buttonH.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonH.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
        }
        if self.slotParkir.contains("I"){
            self.buttonI.backgroundColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
            self.buttonI.titleLabel?.textColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
        } else{
            self.buttonI.backgroundColor = #colorLiteral(red: 0.9009230733, green: 0.8990613222, blue: 1, alpha: 1)
            self.buttonI.titleLabel?.textColor = #colorLiteral(red: 0.008909844793, green: 0.1515769064, blue: 0.259344995, alpha: 1)
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
