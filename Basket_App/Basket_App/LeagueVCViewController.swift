//
//  LeagueVCViewController.swift
//  Basket_App
//
//  Created by Tenzin Sean on 9/16/17.
//  Copyright © 2017 Tenzin Sean. All rights reserved.
//

import UIKit

class LeagueVCViewController: UIViewController {
    
    var player: Player!
    
    

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
        
    }
    
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        
    }
    
    @IBAction func onMen(_ sender: Any) {
        selectLeague(leagueType: "mens")
        
    }
    
    @IBAction func onWomen(_ sender: Any) {
        selectLeague(leagueType: "women")
        
    }
    
    @IBAction func Co(_ sender: Any) {
        selectLeague(leagueType: "coo")
        
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
            
            
        }
        
    }
    

    

}
