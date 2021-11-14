//
//  ViewController.swift
//  Boxoffice_salah_4sim2_IOS
//
//  Created by Salah_4sim2 on 14/11/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var data = ["El Camino","Extraction","Project Power","Six Underground","Spenser Confidential","The Irishman"]
    // number of model cells -, default is one
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //number of total cells in the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    // for loop to show all table data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mCell") //identified cell with own name in the table view
        let cv = cell?.contentView //identify content view from cell
        // identify necassary elements
        let label = cv?.viewWithTag(1) as! UILabel
        let image = cv?.viewWithTag(2) as! UIImageView
        //fill elements with data from table
        label.text = data[indexPath.row]
        image.image = UIImage(named: data[indexPath.row])
        return cell!
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

