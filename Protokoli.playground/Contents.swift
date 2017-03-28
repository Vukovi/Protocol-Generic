//: Playground - noun: a place where people can play

import UIKit

protocol Vehcile: CustomStringConvertible {
    var isRunning: Bool {get set}
    mutating func start() //ovo mutating se koristi ukoliko ce f-je menjata propertije kod strukture (ili bilo kog drugog elementa tip VALUE TYPE)
    mutating func turnOff()
    
    var make: String {get set}
    var model: String {get set}
}

extension Vehcile {
    mutating func start() {
        if isRunning {
            print("Ukljucen je!")
        } else {
            isRunning = true
            print("\(description)")
        }
    }
    
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("\(description)")
        } else {
            isRunning = true
            print("\(description)")
        }
    }
    
    var makeModel: String {
        return "\(make) \(model)"
    }
}

struct SportsCar: Vehcile {
    
    var isRunning: Bool = false
    var make: String //kod struktura ne mora da se inicijalizuju propertiji protkola
    var model: String
    var description: String { //ovo mora da se doda pored svojstava koje trazi protokol Vehcile, jer to trazi "superprotokol" CustomStringConvertible
        
//        if isRunning {
//           return "Sportski auto radi!"
//        } else {
//            return "Sportski auto je ugasen!"
//        }
        return makeModel
    }
    
//    ove dve funkcije nam nece trebati ovde iako su zahtevane protokolom, jer smo ih razradili u ekstenziji
    
    
//    mutating internal func start() {
//        if isRunning {
//            print("Uveliko radi!")
//        } else {
//            isRunning = true
//            print("Vroooom")
//        }
//    }
//    
//    mutating internal func turnOff() {
//        if isRunning {
//            isRunning = false
//            print("Pssssstttttt")
//        } else {
//            print("Vec je ugasen!")
//        }
//    }
}

class SemiTruck: Vehcile {
    
    var isRunning: Bool = false
    var make: String //kod klasa mora da se inicijalizuju propertiji protkola
    var model: String
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    var description: String { //ovo mora da se doda pored svojstava koje trazi protokol Vehcile, jer to trazi "superprotokol" CustomStringConvertible
        
//        if isRunning {
//            return "Kamion trenutno radi!"
//        } else {
//            return "Kamion je ugasen!"
//        }
        return makeModel
    }

//    ove dve funkcije nam nece trebati ovde iako su zahtevane protokolom, jer smo ih razradili u ekstenziji
    
//    func start() {
//        if isRunning {
//            print("Kamion radi!")
//        } else {
//            isRunning = true
//            print("Draaaaabbrrrr!")
//        }
//    }
//    
//    func turnOff() {
//        if isRunning {
//            isRunning = false
//            print("Caaakk")
//        } else {
//            print("Kamion je ugasen!")
//        }
//    }
    
    func blowAirHorn() {
        print("Tooooooooooot")
    }
}


//var car1 = SportsCar()
//var truck1 = SemiTruck()

var car1 = SportsCar(isRunning: false, make: "Porche", model: "911")
var truck1 = SemiTruck(isRunning: false, make: "UAZ", model: "Kamaz")

car1.start()
truck1.start()
truck1.blowAirHorn()

car1.turnOff()
truck1.turnOff()

var vehcileArray: Array<Vehcile> = [car1,truck1] //mogu da napravim ovakav niz jer oba elementa, iako razlicitog tipa, pripadaju protokolu Vehcile, tako da protokole mogu da koristim kao tipove

for vehcile in vehcileArray {
    if let veh = vehcile as? SemiTruck {
        print(veh.blowAirHorn()) //da nije bilo kastovanja ne bi bilo moguce koristiti ovu f-ju
    }
//    print(vehcile.description)
    print(vehcile.makeModel)
}



extension Double {
    var dollarSign: String {
        return String(format: "$%.02f", self)
    }
}

var nekiBroj = 32.15 * 0.15
nekiBroj.dollarSign





