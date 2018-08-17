class User {

    var name = ""
    var gender = 0
    var era = 0
    var age = 0
    var visits = ""
    
    init(name: String, gender: Int, era: Int, age: Int,visits: String){
        self.name = name
        self.gender = gender
        self.era = era
        self.age = age
        self.visits = visits
    }
}
enum gender: Int {
    case men = 1
    case female = 0
}

//let usersName = ["Dr. Emmett Brown", "Marty McFly", "Lorraine Baines"]
//let usersGender = [1, 1, 0]
//let usersEra = [1985, 1985, 1955]
//let usersAge = [65,17,18]
//let usersVisits = [[1885, 1955, 1985, 2015], [1885, 1955, 1985, 2015], []]




//let dict: [String : Any] = [:]
