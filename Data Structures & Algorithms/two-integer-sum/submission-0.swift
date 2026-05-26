class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indices: [Int] = []
        var seen: [Int: Int] = [:]
        for (index, num) in nums.enumerated() {
            let complement = target - num
            if let seenIndex = seen[complement] {
                indices.append(contentsOf: [seenIndex, index]) 
            }
            seen[num] = index
        }
    return indices
    }
}
