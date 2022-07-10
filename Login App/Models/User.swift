//
//  User.swift
//  Login App
//
//  Created by igor s on 05.07.2022.
//

struct User {
    let login: String
    let password: String
    let personInfo: Person
    
    static func getUser() -> User {
        User(
            login: "meet.igor",
            password: "mypass",
            personInfo: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let image: String
    let instagram: String
    let hobbies: [HobbyType]
    
    var fullnName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Igor",
            surname: "Popov",
            age: 32,
            image: "avatar",
            instagram: "@meet.igor",
            hobbies: [.running, .yoga, .programming, .mobilephoto]
        )
    }
}

enum HobbyType: String {
    case programming = "programming"
    case running = "running"
    case cooking = "cooking"
    case reading = "reading"
    case yoga = "yoga"
    case mobilephoto = "mobile photography"
    case videmaking = "video making"
}
