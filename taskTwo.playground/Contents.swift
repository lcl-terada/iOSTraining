struct User {

    let name: String
    let gender: Int
    let era: Int
    let age: Int
    let visits: [Int]?
}

    let dr = User(name: "Dr. Emmett Brown", gender: 1, era: 1985, age: 65, visits: [1885, 1955, 1985, 2015])
    let marty = User(name: "Marty McFly", gender: 1, era: 1985, age: 17, visits: [1885 , 1955, 1985, 2015])
    let lorraine = User(name: "Lorraine Baines", gender: 0, era: 1955, age: 18, visits: nil)

    let users: [User] = [dr, marty, lorraine]

    print(users)
