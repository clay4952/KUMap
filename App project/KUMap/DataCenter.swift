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
        aegineung.latitude = 37.584074
        aegineung.longitude = 127.026926
        
        let hanasquare:Place = Place()
        hanasquare.name = "하나스퀘어"
        hanasquare.icon = UIImage(named: "HanaSquare_small")
        hanasquare.defaultPic = UIImage(named: "HanaSquare_main")
        hanasquare.recentPics = 12
        hanasquare.latitude = 37.5849656
        hanasquare.longitude = 127.0259483
        
        let centralsquare:Place = Place()
        centralsquare.name = "중앙광장"
        centralsquare.icon = UIImage(named: "HanaSquare_small")
        centralsquare.defaultPic = UIImage(named: "CenFountain")
        centralsquare.recentPics = 10
        centralsquare.latitude = 37.5888253
        centralsquare.longitude = 127.0333358
        
        let centrallibrary:Place = Place()
        centrallibrary.name = "중앙도서관"
        centrallibrary.icon = UIImage(named: "HanaSquare_small")
        centrallibrary.defaultPic = UIImage(named: "CenLib")
        centrallibrary.recentPics = 15
        centrallibrary.latitude = 37.5908274
        centrallibrary.longitude = 127.0342033
        
        let unchowoosun:Place = Place()
        unchowoosun.name = "운초우선교육관"
        unchowoosun.icon = UIImage(named: "HanaSquare_small")
        unchowoosun.defaultPic = UIImage(named: "EduHall")
        unchowoosun.recentPics = 3
        unchowoosun.latitude = 37.591595
        unchowoosun.longitude = 127.0345277
        
        let mainhall:Place = Place()
        mainhall.name = "본관"
        mainhall.icon = UIImage(named: "MainHall_small")
        mainhall.defaultPic = UIImage(named: "HanaSquare_main")
        mainhall.recentPics = 8
        mainhall.latitude = 37.5894747
        mainhall.longitude = 127.0323405
        
        let businesshall:Place = Place()
        businesshall.name = "경영본관"
        businesshall.icon = UIImage(named: "BsnHall_small")
        businesshall.defaultPic = UIImage(named: "HanaSquare_main")
        businesshall.recentPics = 12
        businesshall.latitude = 37.5905513
        businesshall.longitude = 127.0350684
        
        let lgposcohall:Place = Place()
        lgposcohall.name = "LG-POSCO경영관"
        lgposcohall.icon = UIImage(named: "BsnLP_small")
        lgposcohall.defaultPic = UIImage(named: "HanaSquare_main")
        lgposcohall.recentPics = 12
        lgposcohall.latitude = 37.5898588
        lgposcohall.longitude = 127.0352492
        
        let hyundaimotorshall:Place = Place()
        hyundaimotorshall.name = "현대자동차경영관"
        hyundaimotorshall.icon = UIImage(named: "BsnHM_small")
        hyundaimotorshall.defaultPic = UIImage(named: "HanaSquare_main")
        hyundaimotorshall.recentPics = 6
        hyundaimotorshall.latitude = 37.5908405
        hyundaimotorshall.longitude = 127.0353186
        
        let samsunghall:Place = Place()
        samsunghall.name = "백주년기념삼성관"
        samsunghall.icon = UIImage(named: "SamsungHall_small")
        samsunghall.defaultPic = UIImage(named: "SamsungHall_main")
        samsunghall.recentPics = 15
        samsunghall.latitude = 37.5895544
        samsunghall.longitude = 127.0343619
        
        let seogwan:Place = Place()
        seogwan.name = "서관(문과대학)"
        seogwan.icon = UIImage(named: "Libart_small")
        seogwan.defaultPic = UIImage(named: "HanaSquare_main")
        seogwan.recentPics = 15
        seogwan.latitude = 37.5885665
        seogwan.longitude = 127.0317906
        
        let chipmunkroad:Place = Place()
        chipmunkroad.name = "다람쥐길"
        chipmunkroad.icon = UIImage(named: "Chipmunk_small")
        chipmunkroad.defaultPic = UIImage(named: "Chipmunk_main")
        chipmunkroad.recentPics = 12
        chipmunkroad.latitude = 37.589610
        chipmunkroad.longitude = 127.032127
        
    }
}
