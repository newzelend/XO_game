//
//  MenuScreenViewController.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import UIKit

class MenuScreenViewController: UIViewController {
    @IBOutlet weak var twoPlayerButton: UIButton!
    @IBOutlet weak var computerButton: UIButton!
    @IBOutlet weak var fiveByFiveButton: UIButton!
    
    
    @IBAction func twoPlayerButtonTap(_ sender: Any) {
        Session.shared.mode = .againstHuman
        performSegue(withIdentifier: "toGame", sender: self)
    }
    @IBAction func fiveByFiveButtonTap(_ sender: Any)  {
        Session.shared.mode = .fiveByFive
        performSegue(withIdentifier: "toGame", sender: self)
    }
    
    @IBAction func computerButtonTap(_ sender: Any) {
        Session.shared.mode = .againstComputer
        performSegue(withIdentifier: "toGame", sender: self)
     }
    }
    

enum gameMode {
    case againstHuman
    case againstComputer
    case fiveByFive
}
