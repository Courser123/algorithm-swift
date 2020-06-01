import UIKit

var str = "Hello, playground"

/**
 https://leetcode-cn.com/problems/container-with-most-water/
 */


func maxAreaA(_ height: [Int]) -> Int {
    
    var maxArea = 0
    
    for index in 0..<height.count {
        let h1 = height[index]
        for idx in index..<height.count {
            let h2 = height[idx]
            let area = min(h1, h2) * (idx - index)
            if area > maxArea {
                maxArea = area
            }
        }
    }
    
    return maxArea
    
}

maxAreaA([1,8,6,2,5,4,8,3,7])

func maxAreaB(_ height: [Int]) -> Int {
    
    var maxArea = 0
    var leftPt = 0
    var rightPt = height.count - 1
    
    while leftPt != rightPt {
        let minHeight = min(height[leftPt], height[rightPt])
        let area = minHeight * (rightPt - leftPt)
        if area > maxArea {
            maxArea = area
        }
        if minHeight == height[leftPt] {
            leftPt += 1
        } else {
            rightPt -= 1
        }
    }
    
    return maxArea
}

maxAreaB([1,8,6,2,5,4,8,3,7])

