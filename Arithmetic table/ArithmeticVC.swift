//
//  ArithmeticVC.swift
//  Arithmetic table
//
//  Created by Kesley Ribeiro on 29/Mar/17.
//  Copyright © 2017 App ao Cubo. All rights reserved.
//

import UIKit

class ArithmeticVC: UIViewController , UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var myTable: UITableView!
    @IBOutlet var sliderValue: UISlider!
    
    var operation = ""
    var timesTable = 0    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        // Update datas in tableView
        myTable.reloadData()
    }
    
    // TABLE VIEW SESSION
    
    // Numbers of Cell in TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // Configuration of Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        // Set slide value to var
        timesTable = Int(sliderValue.value)
        
        // Calculate the operation
        operation = "\(timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
        
        // Set operation to textLabel in cell of tableView
        cell.textLabel?.text = operation
        
        return cell
    }
    
    // User seletec an cell in tableView and show alert with operation
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 1 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 2 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 3 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 4 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 5 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 6 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 7 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 8 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
            
        } else  if indexPath.row == 9 {
            
            operation = "\n\(self.timesTable) * \(indexPath.row + 1) = \(timesTable * (indexPath.row + 1))"
            showAlert("OPERATION", operation)
        }
    }
    
    // Function with structure standard to show alert
    func showAlert (_ title: String, _ message: String) {
        
        // Create alert and define parameters title and message
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Add alert to alertActions and define title OK button
        alert.addAction(UIAlertAction(title: "OK!", style: .default, handler: { (action) -> Void in
            print("\nUser touched in the OK!")
        }))
        
        // Show alert in view
        self.present(alert, animated: true, completion: nil)
    }
}
