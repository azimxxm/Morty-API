//
//  CharacterTVC.swift
//  Morty API
//
//  Created by Azimjon on 11/10/22.
//

import UIKit
import SDWebImage



class CharacterTVC: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var statusUIView: UIView!
    @IBOutlet weak var speciesLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var episodeLbl: UILabel!
    @IBOutlet weak var idLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func updateCell(character: CharacterDM){
        nameLbl.text = character.name
        idLbl.text = "\(character.id)"
        speciesLbl.text = "\(character.status) - \(character.species)"
        cellImageView.sd_imageIndicator = SDWebImageActivityIndicator.gray
        cellImageView.sd_setImage(with: URL(string: character.image))
        locationLbl.text = character.location.name
        episodeLbl.text = character.episode.created
        if character.status == "Alive" {
            statusUIView.backgroundColor = .green
        } else if character.status == "Dead" {
            statusUIView.backgroundColor = .orange
        } else {
            statusUIView.backgroundColor = .systemGray4
        }
        
    }


    
}

