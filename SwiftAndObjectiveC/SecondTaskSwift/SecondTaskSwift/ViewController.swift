//
//  ViewController.swift
//  SecondTaskSwift
//
//  Created by Brunno Castigrini on 16/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        createAlert()
    }
    
    func createAlert(){
        let alert = UIAlertController(title: "Going deep into the forest", message: "Do you really want to go ahead?", preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: "Go!", style: .default, handler: {_ in
            print("Going to another view")
            self.goToAnotherView()
        }))
        
        alert.addAction(UIAlertAction(title: "Back", style: UIAlertAction.Style.destructive, handler:{_ in
            print("Cancel")
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func goToAnotherView(){
        let thirdView = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        self.navigationController?.pushViewController(thirdView, animated: true)
    }

}

