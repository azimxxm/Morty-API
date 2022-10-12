//
//  HomeVC.swift
//  Morty API
//
//  Created by Azimjon on 11/10/22.
//

import UIKit
import Alamofire
import SwiftyJSON

class HomeVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let characterTVCID = "CharacterTVC"
    var limitPage = 1
    var characters:[CharacterDM] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.allowsSelection = false
        let nibCharacterTVC = UINib(nibName: characterTVCID, bundle: nil)
        getCharacter()
        tableView.register(nibCharacterTVC, forCellReuseIdentifier: characterTVCID)
    }
    
    func getCharacter() {
        AF.request("https://rickandmortyapi.com/api/character/?page=\(limitPage)", method: .get).response { response in
            
            if let data = response.data {
                let json = JSON(data)
                for d in json["results"].arrayValue {
                    self.characters.append(CharacterDM(jsonData: d))
                }
                self.tableView.reloadData()
            }
        }
    }

 
}



extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: characterTVCID, for: indexPath) as? CharacterTVC else { return UITableViewCell() }
        
        cell.updateCell(character: characters[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let characterDetailVC = CharacterDetailVC(nibName: "CharacterDetailVC", bundle: nil)
        characterDetailVC.character = characters[indexPath.row]
        self.present(characterDetailVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == characters.count - 1 {
            getCharacter()
            limitPage += 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let myAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
        self.characters.remove(at: indexPath.row)
        self.tableView.deleteRows(at: [indexPath], with: .automatic)
        completionHandler(true)
    }
    let preventSwipeFullAction = UISwipeActionsConfiguration(actions: [myAction ])
    preventSwipeFullAction .performsFirstActionWithFullSwipe = true
    return preventSwipeFullAction
    }
    
    
    
    
}



