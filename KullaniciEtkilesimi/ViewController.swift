//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Atilla Çıtırık on 8.05.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAlert(_ sender: Any) {
        let alertContoller = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        let iptalAction = UIAlertAction(title: "iptal", style: .cancel){ action in
            print("iptal seçildi")
        }
        
        alertContoller.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ action in
            print("Tamam seçildi")
        }
        
        alertContoller.addAction(tamamAction)
        
        self.present(alertContoller, animated: true)
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        
        let alertContoller = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        let iptalAction = UIAlertAction(title: "iptal", style: .cancel){ action in
            print("iptal seçildi")
        }
        
        alertContoller.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){ action in
            print("Tamam seçildi")
        }
        
        alertContoller.addAction(tamamAction)
        
        self.present(alertContoller, animated: true)
        
    }
    @IBAction func buttonOzelAlert(_ sender: Any) {
        
        let alertContoller = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertContoller.addTextField { textField in
            textField.placeholder = ",veri Giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            
        }
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .cancel){ action in
            let tf = alertContoller.textFields![0] as UITextField
            if let alinanVeri = tf.text {
                print("alınan veri \(alinanVeri)")
            }
        }
        alertContoller.addAction(kaydetAction)
        
        self.present(alertContoller, animated: true)
        
    }
}

