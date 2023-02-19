//
//  ViewController.swift
//  Assignment2
//
//  Created by Ankit Singh on 2/18/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tblViewTop: UITableView!
    
    @IBOutlet weak var tblViewBottom: UITableView!
    
    
    let restaurants = ["Zeeks Pizza","Shake Shack","Roti","Hurry Curry of Tokyo"]
    let foods = [["Pepperoni","Cheese","Veggie Thai","Classic", "Margarita"],
                 ["ShackBurger","Fries","Cheeseburger","Shroom", "Bacon Cheese"],
                 ["Chicken Masala","Prawns Curry","Lamb Biryani","Paneer Curry", "Aloo Gobi"],
                 ["Chicken Katsu","TonKatsu","Gyoza","Karaage", "Croquettes"]]
    
    var foodItems : [String]  = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop{
            return restaurants.count
        }
        else{
            return foodItems.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop{
            let cell = tableView.dequeueReusableCell(withIdentifier: "topcell", for: indexPath)
            cell.textLabel?.text = restaurants[indexPath.row]
            return cell
        }
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "bottomcell", for: indexPath)
            cell.textLabel?.text = foodItems[indexPath.row]
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                if tableView == tblViewTop{
                    
                    let selectRow = indexPath.row
                    
                    foodItems = foods[selectRow]
             
                    self.tblViewBottom.reloadData()
                }
            }

        }
