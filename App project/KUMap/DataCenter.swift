//
//  DataCenter.swift
//  KUMap
//
//  Created by cscoi028 on 2017. 2. 1..
//  Copyright © 2017년 KUMap. All rights reserved.
//

import Foundation
import UIKit

class Newsfeed {
    var news:[Post]?
}

class List {
    var listPlace:[Place]?
}

class Post {
    let photo:UIImage
    var place:Place?
    var tags:Array<String> = []
    
    init(photo:UIImage) {
        self.photo = photo
    }
}

class Place {
    var name:String
    var icon:UIImage?
    var defaultPic:UIImage?
    var recentPics:Int
    var latitude:Double
    var longitude:Double
    var posts:[Post] = []
    
    init() {
        self.name = ""
        self.recentPics = 0
        self.latitude = 0.0
        self.longitude = 0.0
    }
    
    init(name:String, icon:UIImage, defaultPic:UIImage, recentPics:Int) {
        self.name = name
        self.icon = icon
        self.defaultPic = defaultPic
        self.recentPics = recentPics
        self.latitude = 0.0
        self.longitude = 0.0
    }
}

class User {
    var id:String
    var name:String
    var profileImage:UIImage?
    
    init() {
        self.id = ""
        self.name = ""
    }
}

let dataCenter:DataCenter = DataCenter()
class DataCenter {
    
    var places:[Place] = []
    
    
    
    init() {
        places += self.createDummy()
    }
    
    func createDummy () -> [Place] {
        let aegineung:Place = Place()
        aegineung.name = "애기능"
        aegineung.icon = UIImage(named: "Chipmunk_small")
        aegineung.defaultPic = UIImage(named: "Chipmunk_main")
        aegineung.recentPics = 4
        aegineung.latitude = 37.589620
        aegineung.longitude = 127.032173
        
        let hanasquare:Place = Place()
        hanasquare.name = "하나스퀘어"
        hanasquare.icon = UIImage(named: "HanaSquare_small")
        hanasquare.defaultPic = UIImage(named: "HanaSquare_main")
        hanasquare.recentPics = 12
        hanasquare.latitude = 37.589620
        hanasquare.longitude = 127.032173
        let centralsquare:Place = Place()
        let centrallibrary:Place = Place()
        let unchowoosun:Place = Place()
        let mainhall:Place = Place()
        let businesshall:Place = Place()
        let lgposcohall:Place = Place()
        let hyundaimotorshall:Place = Place()
        let samsunghall:Place = Place()
        let chipmunkroad:Place = Place()
        
        
    }
}
