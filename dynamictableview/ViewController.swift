//
//  ViewController.swift
//  dynamictableview
//
//  Created by Neosoft on 30/09/24.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let itemstext = ["Short text",
                   "This is a slightly longer text for this row",
                   "This is a much longer text that will make the row height expand to fit the content",
                   "Tiny",
                   "Another long text that stretches across multiple lines for the row",
                   "Small"]

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "DynamicTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DynamicTableViewCell")
        
        tableView.estimatedRowHeight = 20
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemstext.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DynamicTableViewCell", for: indexPath) as! DynamicTableViewCell
        
        cell.ldynamictext.text = itemstext[indexPath.row]
        cell.ldynamictext.numberOfLines = 0
        cell.ldynamictext.lineBreakMode = .byWordWrapping
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected row is : \(indexPath.row)")
    }
    

    
}
