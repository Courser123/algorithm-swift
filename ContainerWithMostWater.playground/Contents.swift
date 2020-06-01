import UIKit

var str = "Hello, playground"

/**
 https://leetcode-cn.com/problems/container-with-most-water/
 
 11. 盛最多水的容器
 难度
 中等

 给你 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0)。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。

 说明：你不能倾斜容器，且 n 的值至少为 2。

 示例：

 输入：[1,8,6,2,5,4,8,3,7]
 输出：49
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

