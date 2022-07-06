//
//  User.swift
//  Login App
//
//  Created by igor s on 05.07.2022.
//

struct User {
    let username: String
    let password: String
    let personInfo: Person
    
    static func getUser() -> User {
        User(
            username: "meet.igor",
            password: "mypass",
            personInfo: Person(
                name: "Igor",
                surname: "Popov",
                age: 32,
                image: "avatar",
                instagram: "@meet.igor",
                hobbies: [.running, .yoga, .programming, .mobilephoto]
            )
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
