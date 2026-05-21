class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLen = 0
        var leftPointer = 0

        var dict: [Character: Int] = [:]

        for (rightPointer, char) in s.enumerated() {
            if let seenPosition = dict[char], seenPosition >= leftPointer {
                leftPointer = seenPosition + 1
            
            }
            dict[char] = rightPointer
            maxLen = max(maxLen, rightPointer - leftPointer + 1)
        }
        return maxLen
    }
}
