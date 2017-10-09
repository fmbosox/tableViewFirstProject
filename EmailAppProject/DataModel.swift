//
//  DataModel.swift
//  EmailAppProject
//
//  Created by Felipe Montoya on 10/8/17.
//  Copyright © 2017 Felipe Montoya. All rights reserved.
//

import Foundation

struct UsersData {
    
    private let _usersPosts: [String:[String]] = ["valeria":["foto1.png","foto2.png"],"matt":["foto3.png"],"rafael":["foto4.png"]]
    private let _imagesPosted: [String:String] = ["foto1.png": "A Perfect Weddding Day","foto2.png": "Creating things to move the world","foto3.png": "Nice dog, little tree there","foto4.png": "Just in the beach watching the sun fade"]
    
    var userPost: [String:[String]]{
        return _usersPosts
    }
    var imagesPosted: [String:String] {
        return _imagesPosted
    }
    
    
}
