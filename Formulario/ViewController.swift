//
//  ViewController.swift
//  Formulario
//
//  Created by alumnos on 04/10/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var textName: UILabel!
    
    @IBOutlet weak var textAge: UILabel!
    
    @IBOutlet weak var textSons: UILabel!
    
    @IBOutlet weak var textNameSons: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    
    var name: String = ""
    @IBAction func name(_ sender: UITextField) {
        if sender.text!.count < 4 || sender.text!.count > 15{
            textName.isHidden = false
        } else {
            textName.isHidden = true
            name = sender.text!
        }
        
    }
    
    var textEdad: String = ""
    @IBAction func age(_ sender: UITextField) {
        
        let edad: Int = Int(sender.text!) ?? -1
        if sender.text!.isEmpty || edad < 0 || edad > 150 {
            textAge.isHidden = false
        } else {
            textAge.isHidden = true
            textEdad = sender.text!
        }
    }
    
    var hijos: Int = 0
    var textHijos: String = ""
    @IBAction func sons(_ sender: UITextField) {
        let hijo: Int = Int(sender.text!) ?? -1
        if sender.text!.isEmpty {
            textSons.isHidden = false
        } else {
            textSons.isHidden = true
            hijos = hijo
            textHijos = sender.text!
        }
    }
    var edades: String = ""
    @IBAction func nameSons(_ sender: UITextField) {
        if hijos > 0 {
            if sender.text!.isEmpty {
                textNameSons.isHidden = false
            } else {
                textNameSons.isHidden = true
                edades = sender.text!
            }
        } else {
            textNameSons.isHidden = true
        }
    }
    
    @IBAction func register(_ sender: Any) {
        
        let alerta = UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.default)
        let alertCorrect = UIAlertController(title: "Registro", message: "Registrado correctamente", preferredStyle: UIAlertController.Style.alert)
        alertCorrect.addAction(alerta)
        if name.isEmpty || textEdad.isEmpty || textHijos.isEmpty || (!textHijos.isEmpty && edades.isEmpty) {
            
        } 
        self.present(alertCorrect, animated: true)
        
        
    }
    
    
    
}

