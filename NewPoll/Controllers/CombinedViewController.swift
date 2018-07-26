//
//  CombinedViewController.swift
//  NewPoll
//
//  Created by David Oliver Doswell on 7/26/18.
//  Copyright © 2018 David Oliver Doswell. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?

    var resultsTableViewController : ResultsTableViewController?
    var votingViewController : VotingViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ResultsTableViewController {
            resultsTableViewController = vc
            resultsTableViewController?.voteController = voteController
        }
        
        if let vc = segue.destination as? VotingViewController {
            votingViewController = vc
            votingViewController?.voteController = voteController
        }
    }

}
