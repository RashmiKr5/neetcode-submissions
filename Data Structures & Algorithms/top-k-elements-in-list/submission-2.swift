class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq: [Int: Int] = [:]

        for num in nums {
            freq[num, default: 0] += 1
        }

        return freq
            .sorted { $0.value > $1.value }
            .prefix(k)
            .map { $0.key }
    }
}