//
//  User.swift
//  pleaseGod
//
//  Created by eleonora elefante on 10/12/2019.
//  Copyright © 2019 Eleonora Elefante. All rights reserved.
//

import Foundation
import UIKit


class User {
    var name: String
    var lastSeen: Int
    var image: UIImage
    var lastSeenLabel: String
    
    init(name: String, lastSeen: Int, image: UIImage, lastSeenLabel: String) {
        self.name = name
        self.lastSeen = lastSeen
        self.image = image
        self.lastSeenLabel = lastSeenLabel
        
    }
    
}

let user1 = User(name: "Aurora", lastSeen: 8, image: UIImage(named: "aurora.png")!, lastSeenLabel: "last seen 8 minutes ago")
let user2 = User(name: "Antonio Cimmino", lastSeen: 7, image: UIImage(named: "winnie.png")!, lastSeenLabel: "last seen 7 minutes ago")
let user3 = User(name: "Claudia", lastSeen: 3, image: UIImage(named: "claudia.png")!, lastSeenLabel: "last seen 3 minutes ago")
let user4 = User(name: "Morena", lastSeen: 16, image: UIImage(named: "morena.png")!,lastSeenLabel: "last seen 16 minutes ago")
let user5 = User(name: "Moritz Philip Recke", lastSeen: 20, image: UIImage(named: "moritz.png")!,lastSeenLabel: "last seen 20 minutes ago")
let user6 = User(name: "Silvio", lastSeen: 23, image: UIImage(named: "silvio.png")!,lastSeenLabel: "last seen 23 minutes ago")
let user7 = User(name: "Andy", lastSeen: 30, image: UIImage(named: "andy.png")!,lastSeenLabel: "last seen 30 minutes ago")
let user8 = User(name: "Simona", lastSeen: 32, image: UIImage(named: "simona.png")!,lastSeenLabel: "last seen 32 minutes ago")
let user9 = User(name: "Ester", lastSeen: 36, image: UIImage(named: "ester.png")!,lastSeenLabel: "last seen 36 minutes ago")
let user10 = User(name: "Bojack Horseman", lastSeen: 40, image: UIImage(named: "bojack.png")!,lastSeenLabel: "last seen 40 minutes ago")
let user11 = User(name: "Gianna Stylianou", lastSeen: 12, image: UIImage(named: "gianna.png")!, lastSeenLabel: "last seen 12 minutes ago")



var contactsArray : [User] = [user3, user2, user1, user4, user5, user6, user7, user8, user9, user10, user11]


class Call {
    var name: String
    var missedCall: Bool
    var image: UIImage
    var typeCall: String
    
    init(name: String, missedCall: Bool, image: UIImage, typeCall: String) {
        self.name = name
        self.missedCall = missedCall
        self.image = image
        self.typeCall = typeCall
    }
    
}

let call1 = Call(name: "Aurora", missedCall: true, image: UIImage(named: "aurora.png")!, typeCall: "Missed")
let call2 = Call(name: "Simona", missedCall: false, image: UIImage(named: "simona.png")!, typeCall: "Outgoing (2 min)")
let call3 = Call(name: "Silvio", missedCall: false, image: UIImage(named: "silvio.png")!, typeCall: "Incoming (5 min)")
let call4 = Call(name: "Ester", missedCall: false, image: UIImage(named: "ester.png")!, typeCall: "Outgoing (10 min")
let call5 = Call(name: "Bojack", missedCall: true, image: UIImage(named: "bojack.png")!, typeCall: "Missed")
let call6 = Call(name: "Morena", missedCall: false, image: UIImage(named: "morena.png")!, typeCall: "Outgoing,Incoming")
let call7 = Call(name: "Marco Falanga👨🏻‍💻", missedCall: true, image: UIImage(named: "falanga.png")!, typeCall: "Missed")
let call8 = Call(name: "Aurora", missedCall: false, image: UIImage(named: "aurora.png")!, typeCall: "Incoming (23 min")
let call9 = Call(name: "Claudia", missedCall: true, image: UIImage(named: "claudia.png")!, typeCall: "Missed")
let call10 = Call(name: "Gianna Stylianou", missedCall: false, image: UIImage(named: "gianna.png")!, typeCall: "Ourgoing (23 sec)")
let call11 = Call(name: "Antonio Cimmino", missedCall: true, image: UIImage(named: "winnie.png")!, typeCall: "Missed")
let call12 = Call(name: "Silvio", missedCall: true, image: UIImage(named: "silvio.png")!, typeCall: "Missed")

var callsArray : [Call] = [call1, call2, call3, call4, call5, call6, call7, call8, call9, call10, call11, call12]
var missedCallArray : [Call] = [call1, call5, call7, call9, call11, call12]


class Chat {
    var name: String
    var image: UIImage
    var lastMessage: String
    
    init(name: String, image: UIImage, lastMessage: String) {
        self.name = name
        self.image = image
        self.lastMessage = lastMessage
    }
    
}

let chat1 = Chat(name: "ADA Students 2019/20", image: UIImage(named: "ada.png")!, lastMessage: "Guys please...")
let chat2 = Chat(name: "Claudia", image: UIImage(named: "claudia.png")!, lastMessage: "Photo")
let chat3 = Chat(name: "Marco Falanga👨🏻‍💻", image: UIImage(named: "falanga.png")!, lastMessage: "🤗Sticker")
let chat4 = Chat(name: "Morena", image: UIImage(named: "morena.png")!, lastMessage: "Cinema tonight?")
let chat5 = Chat(name: "Meet & Share Channel", image: UIImage(named: "meetAndShare.png")!, lastMessage: "📎 Thank you Devs for joing our #MeetAndShare sessions! 💪🏼")
let chat6 = Chat(name: "Ester", image: UIImage(named: "ester.png")!, lastMessage: "♥️♥️♥️♥️♥️")
let chat7 = Chat(name: "Andy", image: UIImage(named: "andy.png")!, lastMessage: "Don't worry.")
let chat8 = Chat(name: "Antonio Cimmino", image: UIImage(named: "winnie.png")!, lastMessage: "👍🏼")
let chat9 = Chat(name: "Simona", image: UIImage(named: "simona.png")!, lastMessage: "You're welcome💕")
let chat10 = Chat(name: "Mortiz Philip Recke", image: UIImage(named: "moritz.png")!, lastMessage: "Hey Eleonora! Hope you're doing well. This is your token: Eleonora Elefante - 45QLx8")
let chat11 = Chat(name: "Bojack Horseman", image: UIImage(named: "bojack.png")!, lastMessage: "😎Sticker")
let chat12 = Chat(name: "Gianna Stylianou", image: UIImage(named: "gianna.png")!, lastMessage: "👯‍♀️👯‍♀️👯‍♀️👯‍♀️👯‍♀️")
let chat13 = Chat(name: "Silvio", image: UIImage(named: "silvio.png")!, lastMessage: "See you later!")
let chat14 = Chat(name: "Aurora", image: UIImage(named: "aurora.png")!, lastMessage: "Photo")


var chats : [Chat] = [chat1, chat2, chat3, chat4, chat5, chat6, chat7, chat8, chat9, chat10, chat11, chat12, chat13, chat14]

