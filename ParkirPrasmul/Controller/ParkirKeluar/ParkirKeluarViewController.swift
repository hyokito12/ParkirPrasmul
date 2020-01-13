//
//  KondisiParkirViewController.swift
//  ParkirPrasmul
//
//  Created by Aditya Sanjaya on 12/01/20.
//  Copyright © 2020 Aditya. All rights reserved.
//

import UIKit

class ParkirKeluarViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    var slotParkir: [String] = []
    var nomerPlat: [String] = []
    var jnsKendaraan: [String] = []
    var pngendara: [String] = []
    
    @IBOutlet weak var parkirKeluarTableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        parkirKeluarTableView.register(UINib(nibName: "KondisiParkirTableViewCell", bundle: nil), forCellReuseIdentifier: "KondisiParkirTableViewCell")
        parkirKeluarTableView.separatorColor = .clear
        
        for index in UnicodeScalar("A").value...UnicodeScalar("I").value {
            if let identitasParkir = defaults.object(forKey: "parkir\(UnicodeScalar(index) ?? "O")") as? Data {
                let decoder = JSONDecoder()
                if let loadedParkir = try? decoder.decode(identitasKendaraan.self, from: identitasParkir){
                    slotParkir.append(String(UnicodeScalar(index) ?? "O"))
                    nomerPlat.append(loadedParkir.noPlat)
                    jnsKendaraan.append(loadedParkir.jenisKendaraan)
                    pngendara.append(loadedParkir.pengendara)
                }
            }
        }
    }
    
    @IBAction func backHomeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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

extension ParkirKeluarViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nomerPlat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KondisiParkirTableViewCell", for: indexPath) as! KondisiParkirTableViewCell
        
        cell.slotParkir.text = "SLOT \(slotParkir[indexPath.row])"
        cell.noPlat.text = nomerPlat[indexPath.row]
        cell.jenKendaraan.text = jnsKendaraan[indexPath.row]
        cell.pengendara.text = pngendara[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Create the alert controller
        let alertController = UIAlertController(title: "Keluar Parkir", message: "Apakah anda yakin untuk mengeluarkan kendaraan ini dari Prasmul Parkir?", preferredStyle: .alert)
        
        // Create the actions
        let keluarAction = UIAlertAction(title: "Keluar", style: UIAlertAction.Style.destructive) {
            UIAlertAction in
            self.defaults.removeObject(forKey: "parkir\(self.slotParkir[indexPath.row])")
            self.dismiss(animated: true, completion: nil)
        }
        let batalAction = UIAlertAction(title: "Batal", style: UIAlertAction.Style.cancel) {
            UIAlertAction in
            NSLog("Batal Pressed")
        }
        
        // Add the actions
        alertController.addAction(keluarAction)
        alertController.addAction(batalAction)
        
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}
