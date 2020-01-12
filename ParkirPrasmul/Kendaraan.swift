//
//  Kendaraan.swift
//  ParkirPrasmul
//
//  Created by Aditya Sanjaya on 12/01/20.
//  Copyright © 2020 Aditya. All rights reserved.
//

import Foundation

struct identitasKendaraan: Codable {
    var noPlat: String
    var jenisKendaraan: String
    var pengendara: String
}

enum tipeKendaraan: String{
    case Motor = "Motor"
    case Mobil = "Mobil"
}

enum pengemudi: String{
    case Mahasiswa = "Mahasiswa"
    case Staff = "Staff"
    case Tamu = "Tamu"
}

let pengguna = identitasKendaraan(noPlat: "DK 1234 UVW", jenisKendaraan: tipeKendaraan.Mobil.rawValue, pengendara: pengemudi.Mahasiswa.rawValue)
