//: Playground - noun: a place where people can play

import UIKit

func intAdder(number: Int) -> Int {
    return number + 1
}

intAdder(number: 15)

func doubleAdder(number: Double) -> Double {
    return number + 1.0
}

doubleAdder(number: 15.0)

//ali da ne bih pisao 100 ovakvih funkcija koje sustinski rade isti posao, napravicu jednu genericku koja ce za bilo koji tip da obavi isti posao

func genericAdder<TipPodatka: Strideable>(number: TipPodatka) -> TipPodatka {
    return number + 1
} //Swiftov Protokol Strideable omogucava da tipovi podataka koji se mogu podvrgnuti matematickim operacijama, budu medjusobno izmerivi.
genericAdder(number: 15)
genericAdder(number: 15.0)


//komplikovanije

func intMultiplier(lhs:Int, rhs:Int) -> Int {
    return lhs * rhs
}
intMultiplier(lhs: 2, rhs: 3)


func doubleMultiplier(lhs:Double, rhs:Double) -> Double {
    return lhs * rhs
}
doubleMultiplier(lhs: 2.1, rhs: 3.7)



protocol Brojevi {
    static func *(lhs:Self, rhs: Self) -> Self
}

extension Double: Brojevi {}
extension Int: Brojevi {}
extension Float: Brojevi {}

func genericMulitplier<TipPodatka: Brojevi>(lhs:TipPodatka, rhs:TipPodatka) -> TipPodatka {
    return lhs * rhs
}

genericMulitplier(lhs: 5, rhs: 5)
genericMulitplier(lhs: 3.14, rhs: 5)











