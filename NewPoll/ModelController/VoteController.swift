//
//  VoteController.swift
//  NewPoll
//
//  Created by David Oliver Doswell on 7/26/18.
//  Copyright © 2018 David Oliver Doswell. All rights reserved.
//

import Foundation

class VoteController {
    
    func createVote(name: String, response: String) {
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
    private(set) var votes : [Vote] = []
}
