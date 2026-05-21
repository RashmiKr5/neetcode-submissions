class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
          var anaGroup: [[String]] = [] 
          var strDict: [String: [String]] = [:]  

          for str in strs {
            let key = String(str.sorted())

            strDict[key, default: []].append(str)
          }
            return Array(strDict.values)
    }
}
