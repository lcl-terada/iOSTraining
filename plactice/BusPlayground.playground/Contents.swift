struct Bus {

    let name: String
    let cost: Int
    let numberOfSeats: Int
    let numberOfPassengers: Int
//    let rate: Double
    var faces: Int

    init(name: String, cost: Int, numberOfSeats: Int, numberOfPassengers: Int, faces: Int) {
        self.name = name
        self.cost = cost
        self.numberOfSeats = numberOfSeats
        self.numberOfPassengers = numberOfPassengers
//        self.rate = rate
        self.faces = faces
    }
}
    let redBus = Bus(name: "赤バス", cost: 1000, numberOfSeats: 30, numberOfPassengers: 10, faces: 0)
    let blueBus = Bus(name: "青バス", cost: 2000, numberOfSeats: 10, numberOfPassengers: 5, faces: 1)
    let yellowBus = Bus(name: "黄バス", cost: 3000, numberOfSeats: 5, numberOfPassengers: 2, faces: 1)

    let buses: [Bus] = [redBus, blueBus, yellowBus]
    var sortedBuses: [Bus] = []

    for bus in buses {
            if sortedBuses.isEmpty {
            sortedBuses.append(bus)
            }

            for i in 0...sortedBuses.count - 1 {
                if bus.cost > sortedBuses[i].cost{
                   
                   sortedBuses.insert(bus, at: i)
                   break
                }
            }
        }

print(sortedBuses)
