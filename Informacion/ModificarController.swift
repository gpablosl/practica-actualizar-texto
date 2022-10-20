//
//  ModificarController.swift
//  Informacion
//
//  Created by Alumno on 20/10/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class ModificarController : UIViewController {
    
    var texto : String?
    var callbackActualizar : ((String) -> Void)?
    
    @IBOutlet weak var txtTexto: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if texto != nil{
            txtTexto.text = texto
        }
        
    }
    @IBAction func doTapActualizar(_ sender: Any) {
        if callbackActualizar != nil{
            callbackActualizar!(txtTexto.text!)
        }
    }
    
}
