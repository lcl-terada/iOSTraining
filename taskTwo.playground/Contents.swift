struct users {
    
    let name: String
    let gender: Int
    let era: Int
    let age: Int
    let visits: Any

    init(name: String, gender: Int, era: Int, age: Int, visits: Any) {
        self.name = name
        self.gender = gender
        self.era = era
        self.age = age
        self.visits = visits
    }
}

    let dr = users(name: "Dr. Emmett Brown", gender: 1, era: 1985, age: 65, visits: [1885, 1955, 1985, 2015])
    let marty = users(name: "Marty McFly", gender: 1, era: 1985, age: 17, visits: [1885 , 1955, 1985, 2015])
    let lorraine = users(name: "Lorraine Baines", gender: 0, era: 1955, age: 18, visits: "null")

    let allUser: [users] = [dr, marty, lorraine]

    print(allUser)
