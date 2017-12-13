//
//  Section.swift
//  TableViewDropDown
//
//  Created by verareddy on 12/13/17.
//  Copyright © 2017 Netberry. All rights reserved.
//

import Foundation

struct Section {
    var genre: String!
    var movies: [String]!
    var expanded: Bool!
    
    init(genre: String, movies: [String], expanded: Bool) {
        self.genre = genre
        self.movies = movies
        self.expanded = expanded
    }
}
