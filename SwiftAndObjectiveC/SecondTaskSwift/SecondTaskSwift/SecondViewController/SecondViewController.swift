//
//  SecondViewController.swift
//  SecondTaskSwift
//
//  Created by Brunno Castigrini on 17/08/21.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let itensArray = ["Sword","Crown","Ruby","Gold","Diamond","Ring","Necklace","Ruby","Skull","Hammer","Potion","Ruby","Fang","Dagger","Scroll","Bow","Ruby","Crystal","Staff","Ruby","Helmet","Armor","Ruby","Branch","Rose"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.register(CustomCell.self, forCellReuseIdentifier: "customCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itensArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as? CustomCell
        print(itensArray[indexPath.row])
        
        cell?.customCellLabel?.text = itensArray[indexPath.row]
        cell?.customCellImage?.image = UIImage(named: itensArray[indexPath.row])

//        cell?.customCellLabel.text = itensArray[indexPath.row]
//        cell?.customCellImage.image = UIImage(named: itensArray[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    @IBAction func goBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
