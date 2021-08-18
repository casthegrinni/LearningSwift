//
//  SecondViewController.swift
//  FirstTaskSwift
//
//  Created by Brunno Castigrini on 06/08/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func returnButton(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
}
