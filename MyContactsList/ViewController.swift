//
//  ViewController.swift
//  MyContactsList
//
//  Created by Fernando's Mac on 01/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var contacts: [Contact] = []
    var people: [String] = []
    var avatars: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        people = ["Javier Rodriguez", "Luis Torres", "José Medina", "Luz Garcia", "Diana Perez", "Maria Gonzalez", "Susana Perales", "Alfredo Camacho"]
        
        
        avatars = ["avatar1", "avatar8", "avatar5", "avatar4", "avatar2", "avatar3", "avatar6", "avatar7"]
        
        for index in 0..<people.count {
            contacts.append(Contact(avatarName: avatars[index], personName: people[index]))
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        
        cell.textLabel?.text = contacts[indexPath.row].personName
        
        // TODO: Try with if let optional binding?
        
        cell.imageView!.image = UIImage(named: contacts[indexPath.row].avatarName)!
        
        return cell
    }
}

