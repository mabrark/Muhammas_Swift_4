import UIKit

/*
 Create a base protocol with common properties or methods for monsters.
 Derive two child protocols for specific monster types.
 Create four classes (two flying and two water monsters) conforming to these child protocols.
 Write a function that accepts a collection of Monster objects and prints details about each.
 Instructions
 Step 1: Define the Base Protocol
 Monster with:
 var name: String { get }
 func roar() -> String
 Step 2: Define Child Protocols
 FlyingMonster with:
 var wingSpan: Double { get }
 func fly() -> String
 WaterMonster with:
 var swimSpeed: Int { get }
 func swim() -> String
 Step 3: Create Four Classes
 Dragon and Gryphon conforming to FlyingMonster.
 Kraken and Merfolk conforming to WaterMonster.
 Step 4: Create a Function to Handle Monsters
 printMonsterDetails(monsters: [Monster]) to print information for each monster, using polymorphism to call appropriate methods based on their type.
 Sample Output
 Fire Drake roars fiercely, shaking the ground!
 Fire Drake spreads its 15.0-meter wings and takes to the sky!
 -----------------------
 Sky Hunter screeches with a piercing cry!
 Sky Hunter soars high with its majestic 12.0-meter wings!
 -----------------------
 Sea Terror bellows from the deep, causing waves to crash!
 Sea Terror glides through the water at 20 knots!
 -----------------------
 Coral Queen sings an enchanting melody that stirs the seas!
 Coral Queen swims gracefully at 10 knots!
 -----------------------

 */


/*
 Create a base protocol with common properties or methods for monsters.
 Step 1: Define the Base Protocol
 */

protocol Monster {
    var name: String { get }
    
    func roar() -> String
}

/*
 Step 2: Define Child Protocols
 */

protocol FlyingMonster: Monster {
    var wingSpan: Double { get }
    
    func fly() -> String
}

protocol WaterMonster: Monster {
    var swimSpeed: Int { get }
    
    func swim() -> String
}

/*
 Step 3: Create Four Classes
 Dragon and Gryphon conforming to FlyingMonster.
 Kraken and Merfolk conforming to WaterMonster.
 */

class Dragon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    func fly() -> String {
        return "spreads its \(self.wingSpan) meter wings and takes to the sky!"
    }
    
    func roar() -> String {
        return "Roars fiercely, shaking the ground!"
    }
    
    
}

class Gryphon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
       
    }
    func fly() -> String {
        return "Soars high with its majestic \(self.wingSpan) meter wings!"
    }
    
    func roar() -> String {
        return "Screeches with a piercing cry!"
    }
    
    
}

class Kraken: WaterMonster {
    var name: String = ""
    var swimSpeed: Int = 20
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    
    
    func swim() -> String {
        return "Glides through the water at \(self.swimSpeed)"
    }
    
    
    
    func roar() -> String {
        return "Bellows from the deep, causing waves to crash!"
    }
    
    
}


class Merfolk: WaterMonster {
    var name: String = ""
    var swimSpeed: Int = 20
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    
    
    func swim() -> String {
        return "Swims gracefully at \(self.swimSpeed)"
    }
    
    
    
    func roar() -> String {
        return "Sings an enchanting melody that stirs the seas!"
    }
    
    
}
/*
 Step 4: Create a Function to Handle Monsters
 printMonsterDetails(monsters: [Monster]) to print information for each monster, using polymorphism to call appropriate methods based on their type.
 */

func monsterDetails(monsters: [Monster]) {
    for m in monsters {
        print("Name: \(m.name)")
        print("Roar: \(m.roar())")
        if let flyingMonster = m as? FlyingMonster {
            print("Fly: \(flyingMonster.fly()) \n")
            print("<======================================================>\n")
        }else if let waterMonster = m as? WaterMonster {
            print("Swim: \(waterMonster.swim()) knots! \n")
            print("<======================================================>\n")
        }
    }
}

var Drag: Dragon = Dragon(name: "Fire Drake", wingSpan: 15)
var Gryp: Gryphon = Gryphon(name: "Sky Hunter", wingSpan: 12)
var Krak: Kraken = Kraken(name: "Sea Terror", swimSpeed: 20)
var Merf: Merfolk = Merfolk(name: "Coral Queen", swimSpeed: 10)
var monster: [Monster] = [Drag, Gryp, Krak, Merf ]

monsterDetails(monsters: monster)

