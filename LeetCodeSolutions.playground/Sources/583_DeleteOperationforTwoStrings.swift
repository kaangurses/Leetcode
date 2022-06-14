// 583. Delete Operation for Two Strings

final class Solution583 {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        var dp = Array(repeating: 0, count: word2.count+1)
        let word1Array = Array(word1)
        let word2Array = Array(word2)
        for idx in 0...word1.count {
            var temp = Array(repeating: 0, count: word2.count+1)
            for jdx in 0...word2.count {
                if idx == 0 || jdx == 0 {
                    temp[jdx] = idx+jdx
                } else if word1Array[idx-1] == word2Array[jdx-1] {
                    temp[jdx] = dp[jdx-1]
                } else {
                    temp[jdx] = 1 + min(dp[jdx], temp[jdx-1])
                }
            }
            dp = temp
        }
        return dp[word2.count]
    }

}
