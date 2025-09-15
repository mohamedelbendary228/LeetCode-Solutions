class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        var freqMap: [Character: Int] = [:]
        
        for char in s {
            freqMap[char, default: 0] += 1
        }
        
        guard let firstCount = freqMap.values.first else {
            return true
        }
        
        
        for value in freqMap.values {
            if value != firstCount {
                return false
            }
        }
        
        return true
    }
}