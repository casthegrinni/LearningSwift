//
//  ThirdViewController.swift
//  SecondTaskSwift
//
//  Created by Brunno Castigrini on 17/08/21.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var mainTableView: UITableView!
    
    let itensArray = ["Sword","Crown","Ruby","Gold","Diamond","Ring","Necklace","Ruby","Skull","Hammer","Potion","Ruby","Fang","Dagger","Scroll","Bow","Ruby","Crystal","Staff","Ruby","Helmet","Armor","Ruby","Branch","Rose"]

    override func viewDidLoad() {
        mainTableView.delegate = self
        mainTableView.dataSource = self
        registerCell(xibName: "NewCell", idCell: "newCell")
        registerCell(xibName: "ExceptionCell", idCell: "exceptionCell")
        
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itensArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row+1)%4 != 0 {
            let cell = mainTableView.dequeueReusableCell(withIdentifier: "newCell", for: indexPath) as? NewCell
            
            cell?.testingLabel.text = itensArray[indexPath.row]
            cell?.testingImage.image = UIImage(named: itensArray[indexPath.row])
            
            if itensArray[indexPath.row] == "Ruby" {
                cell?.backgroundColor = .red
            } else {
                cell?.backgroundColor = .none
            }
            
            return cell ?? UITableViewCell()
            
        } else {
            let cell = mainTableView.dequeueReusableCell(withIdentifier: "exceptionCell", for: indexPath) as? ExceptionCell
            cell?.exceptionLabel.text = "!!!"
            
            return cell ?? UITableViewCell()
        }
    }
    
    func registerCell(xibName:String, idCell: String){
        mainTableView.register(UINib(nibName: xibName, bundle: nil), forCellReuseIdentifier: idCell)
    }

}
