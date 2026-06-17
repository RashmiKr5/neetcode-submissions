class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
guard let index = nums.firstIndex(of: target) else {
    return -1
}
return index
    }
}
