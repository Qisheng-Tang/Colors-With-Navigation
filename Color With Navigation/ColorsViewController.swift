//
//  ColorsViewController.swift
//  Colors
//
//  Created by 唐琪盛 on 7/12/18.
//  Copyright © 2018 Qisheng Tang. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    
    var colors=[Color(name: "red", uiColor: UIColor.red),
                Color(name: "orange", uiColor: UIColor.orange),
                Color(name: "yellow", uiColor: UIColor.yellow),
                Color(name: "green", uiColor: UIColor.green),
                Color(name: "blue", uiColor: UIColor.blue),
                Color(name: "purple", uiColor: UIColor.purple),
                Color(name: "brown", uiColor: UIColor.brown)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsTableView.dataSource = self
        colorsTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let thecolor = colors[indexPath.row]
        
        cell.textLabel?.text = thecolor.name
        cell.backgroundColor = thecolor.uiColor
        cell.selectionStyle = .none
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.color = colors[row]        }
    }

}
