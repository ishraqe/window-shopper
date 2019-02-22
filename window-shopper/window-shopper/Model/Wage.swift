import Foundation

class Wage{
    class func getHours(forWage wage: Double, forPrice price: Double)-> Int {
        return Int(ceil(price/wage))
    }
}
