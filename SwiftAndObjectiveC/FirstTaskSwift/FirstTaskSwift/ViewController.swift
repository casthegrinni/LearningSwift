//
//  ViewController.swift
//  FirstTaskSwift
//
//  Created by Brunno Castigrini on 06/08/21.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
    }

    @IBAction func startButton(_ sender: Any) {
        // Creating an alert and putting it in a variable
        let alert = UIAlertController(title: "Do you want to be redirected?", message: "Please, choose one.", preferredStyle: UIAlertController.Style.alert)
        
        // First option
        alert.addAction(UIAlertAction(title: "Confirm", style: UIAlertAction.Style.default, handler: {_ in
            print("Here we go...")
            
            let secondViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
            //self.present(secondViewController, animated: true, completion: nil)
            //let navController = UINavigationController(rootViewController: secondViewController)
            self.navigationController?.pushViewController(secondViewController, animated: true)
        }))
        
        // Second option
        alert.addAction(UIAlertAction (title: "Cancel", style: UIAlertAction.Style.destructive, handler: {_ in
            print("We are not going nowhere")
        }))
        
        // "Alerting" (is this a verb?)
        self.present(alert, animated: true, completion: nil)
    }
    
}

