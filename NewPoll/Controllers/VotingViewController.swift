//
//  VotingViewController.swift
//  NewPoll
//
//  Created by David Oliver Doswell on 7/26/18.
//  Copyright © 2018 David Oliver Doswell. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?
    

    @IBOutlet weak var favoriteLabel: UILabel!
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var response: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        
        guard let name = name.text else { return }
        guard let response = response.text else { return }
        
        voteController?.createVote(name: name, response: response)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
