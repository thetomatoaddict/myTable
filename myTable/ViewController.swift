//
//  ViewController.swift
//  myTable
//
//  Created by sujin on 2022/11/11.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {


    @IBOutlet weak var mytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    


}

