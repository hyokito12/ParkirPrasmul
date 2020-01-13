//
//  inputDataParkirMasukViewController.swift
//  ParkirPrasmul
//
//  Created by Aditya Sanjaya on 12/01/20.
//  Copyright © 2020 Aditya. All rights reserved.
//

import UIKit

class InputParkirViewController: UIViewController {
    
    @IBOutlet weak var parkirLabel: UILabel!
    @IBOutlet weak var platNomorTextField: UITextField!
    @IBOutlet weak var jenisKendaraanSegmentedControl: UISegmentedControl!
    @IBOutlet weak var pengendaraSegmentedControl: UISegmentedControl!
    @IBOutlet weak var simpanButton: UIButton!
    var slotParkir = String()
    var jenisKendaraan = String()
    var pengendara = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        simpanButton.layer.cornerRadius = 10
        parkirLabel.text = slotParkir
    }
    
    @IBAction func backParkirMasukButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func simpanParkir(_ sender: Any) {
        if jenisKendaraanSegmentedControl.selectedSegmentIndex == 0 {
            jenisKendaraan = "Motor"
        } else if jenisKendaraanSegmentedControl.selectedSegmentIndex == 1{
            jenisKendaraan = "Mobil"
        }
        
        if pengendaraSegmentedControl.selectedSegmentIndex == 0{
            pengendara = "Mahasiswa"
        } else if pengendaraSegmentedControl.selectedSegmentIndex == 1{
            pengendara = "Staff"
        } else if pengendaraSegmentedControl.selectedSegmentIndex == 2{
            pengendara = "Tamu"
        }
        
        if platNomorTextField.text! != ""{
            let dataUser = identitasKendaraan(noPlat: platNomorTextField.text!, jenisKendaraan: jenisKendaraan, pengendara: pengendara)
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(dataUser){
                let defaults = UserDefaults.standard
                defaults.set(encoded, forKey: "parkir\(slotParkir)")
                dismiss(animated: true, completion: nil)
            }
        } else{
            let alert = UIAlertController(title: "Nomer Plat Kosong", message: "Nomor plat harus diisi. Mohon diisi dengan benar", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
        print(platNomorTextField.text!)
        print(jenisKendaraanSegmentedControl.selectedSegmentIndex)
        print(pengendaraSegmentedControl.selectedSegmentIndex)
    }
    
    func simpanLocalStorage(){
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
