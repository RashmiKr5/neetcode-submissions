class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var seen:[Int: Int] = [:]
        for (index, num) in numbers.enumerated() {
            let complement = target - num
            if let lastSeenPosition = seen[complement] {
                    return [lastSeenPosition + 1, index + 1]
            }
            seen[num] = index
        }
        return []
    }
}
