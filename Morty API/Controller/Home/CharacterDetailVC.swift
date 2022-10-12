//
//  CharacterDetailVC.swift
//  Morty API
//
//  Created by Azimjon on 11/10/22.
//

import UIKit
import SDWebImage

class CharacterDetailVC: UIViewController {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var originLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var createdLbl: UILabel!
    
    var character: CharacterDM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView(character: character)
        
    }
    
    
    func updateView(character: CharacterDM?) {
        guard let character = character else { return }
        cellImageView.sd_setImage(with: URL(string: character.image))
        nameLbl.text = character.name
        statusLbl.text = character.status
        typeLbl.text = character.type
        genderLbl.text = character.gender
        locationLbl.text = character.location.name
        createdLbl.text = character.created
    }

}
