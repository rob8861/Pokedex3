//
//  PokeCell.swift
//  Pokedex3
//
//  Created by Rob Fazio on 3/14/17.
//  Copyright © 2017 Rob Fazio. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecorder: NSCoder){
        super.init(coder: aDecorder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
        nameLabel.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
}
