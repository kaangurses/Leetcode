// 804. Unique Morse Code Words

final class Solution804 {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let dict: [Character: String] = ["a": ".-", "b": "-...", "c": "-.-.", "d": "-..", "e": ".", "f": "..-.", "g": "--.", "h": "....", "i": "..", "j": ".---", "k": "-.-", "l": ".-..", "m": "--", "n": "-.", "o": "---", "p": ".--.", "q": "--.-", "r": ".-.", "s": "...", "t": "-", "u": "..-", "v": "...-", "w": ".--", "x": "-..-", "y": "-.--", "z": "--.."]
        var convertedWords: Set<String> = Set()

        for word in words {
            var convertedWord = ""
            for char in word {
                convertedWord.append(dict[char] ?? "")
            }
            convertedWords.insert(convertedWord)

        }
        return convertedWords.count
    }
}
