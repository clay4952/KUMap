//
//  ClassList.swift
//  KUMap
//
//  Created by cscoi028 on 2017. 1. 24..
//  Copyright © 2017년 KUMap. All rights reserved.
//

import Foundation

class Newsfeed {
    var news:[Post]?
}

class List {
    var listBuilding:[Building]?
}

class Post {
    let photo:String
    var postBD:Building?
    var tags:Array<String> = []
    
    init(photo:String) {
        self.photo = photo
    }
}

class Building {
    let bdName:String
    let defaultPic:String
    var recentPics:Int
    var bdDetail:BDetail?
    
    init(bdName:String, defaultPic:String, recentPics:Int) {
        self.bdName = bdName
        self.defaultPic = defaultPic
        self.recentPics = recentPics
    }
}

class BDetail {
    let bdName:String
    var bdPictures:Array<String>
    let bdLocation:(x:Double, y:Double)
    
    init(bdName:String, bdPictures:Array<String>, bdLocation:(x:Double, y:Double)) {
        self.bdName = bdName
        self.bdPictures = bdPictures
        self.bdLocation = bdLocation
    }
}

