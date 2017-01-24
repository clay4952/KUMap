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

class Post {
    let photo:String
    var postBD:Building?
    var tags:Array<String> = []
    
    init(photo:String) {
        self.photo = photo
    }
}

class List {
    var listBuilding:[Building]?
}

class Building {
    let bdName:String
    let bdLocation:(x:Double, y:Double)
    var recentPics:Int
    
    init(bdName:String, bdLocation:(x:Double, y:Double), recentPics:Int) {
        self.bdName = bdName
        self.bdLocation = bdLocation
        self.recentPics = recentPics
    }
}

