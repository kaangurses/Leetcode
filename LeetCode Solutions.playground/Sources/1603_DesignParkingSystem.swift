// 1603. Design Parking System

final class ParkingSystem {
    private var big: Int
    private var medium: Int
    private var small: Int
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if carType == 1, 0 < big {
            big -= 1
            return true
        } else if carType == 2, 0 < medium {
            medium -= 1
            return true
        } else if carType == 3, 0 < small {
            small -= 1
            return true
        }
        return false
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */
