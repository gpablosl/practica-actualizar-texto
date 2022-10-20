//
//  ViewController.swift
//  Informacion
//
//  Created by Alumno on 20/10/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblAdvertenciaSwitch: UILabel!
    @IBOutlet weak var lblTexto: UILabel!
    @IBOutlet weak var swPermisoNavegacion: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAdvertenciaSwitch.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ModificarController
        destino.texto = lblTexto.text
        destino.callbackActualizar = actualizarTexto
    }
    
    @IBAction func doTapIrOtroVC(_ sender: Any) {
        if swPermisoNavegacion.isOn{
            performSegue(withIdentifier: "goToModificar", sender: self)
        } else {
            lblAdvertenciaSwitch.isHidden = false
        }
    }
    
    func actualizarTexto(texto: String){
        lblTexto.text = texto
    }
    
}

