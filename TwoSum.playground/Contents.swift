import UIKit

var str = "Hello, playground"

// 两遍hash表
func twoSum(nums : [Int], target : Int) -> [Int] {
    
    var result = [Int]()
    var map = [Int : Int]()
    for (index, value) in nums.enumerated() {
        if (map[value] == nil) {
            map.updateValue(index, forKey: value)
        }
    }
    
    for (index, value) in nums.enumerated() {
        if (map[target - value] != nil && map[target - value] != index) { // 不能重复利用这个数组中同样的元素
            result.append(index)
            result.append(map[target - value]!)
            break
        }
    }
    
    return result;
}

// 一遍哈希表
func twoSum2(nums : [Int], target : Int) -> [Int] {
    
    var result = [Int]()
    var map = [Int : Int]()
    
    for (index, value) in nums.enumerated() {
        if (map[target - value] != nil && map[target - value] != index) {
            result.append(index)
            result.append(map[target - value]!)
            break
        }else {
            map.updateValue(index, forKey: target - value)
        }
    }
    
    return result;
}

twoSum(nums: [2, 7, 11, 15], target: 9)

twoSum2(nums: [2, 7, 11, 15], target: 9)

