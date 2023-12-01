//
//  dummydata.swift
//  Study buddy
//
//  Created by yue on 11/29/23.
//

import Foundation
import UIKit

extension Post{
    static let dummyposts = [
        Post(
            id: "1",
            library: "Uris Library",
            time: "2023-11-30 21:21:51",
            message: "iOS"
        ),
        Post(
            id: "2",
            library: "Mann Library",
            time: "2023-12-01 04:33:55",
            message: "iOS"
        ),
        Post(
            id: "3",
            library: "Uris Library",
            time: "2023-12-01 04:34:28",
            message: "iOS"
        ),
        Post(
            id: "1",
            library: "Uris Library",
            time: "2023-11-30 21:21:51",
            message: "iOS"
        ),
        Post(
            id: "2",
            library: "Mann Library",
            time: "2023-12-01 04:33:55",
            message: "iOS"
        ),
        Post(
            id: "3",
            library: "Uris Library",
            time: "2023-12-01 04:34:28",
            message: "iOS"
        )
    ]
    
}

extension Library{
    static let dummylibraries = [
        
        Library(name: "Uris Library", image: "uris_pic"),
        Library(name: "Olin Library", image: "olin_pic"),
        Library(name:"Mann Library", image:"mann_pic"),
        Library(name: "Law Library", image: "law_pic"),
        Library(name: "Engineering Library", image: "eng_pic"),
        Library(name:"Math Library", image: "math_pic"),
        Library(name:"Wood Library", image:"wood_pic"),
        Library(name:"Clarke Africana Library", image:"clar_pic"),
        Library(name:"Clark Physical Sciences Library", image:"phys_pic"),
        Library(name: "Management Library", image: "mang_pic")
    
        
        
    ]
}
