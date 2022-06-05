// 2296. Design a Text Editor

final class TextEditor {
    private var editor: [Character] = []
    private var cursor: Int = 0

    init() { }

    func addText(_ text: String) {
        let array = text
        editor.insert(contentsOf: array, at: cursor)
        cursor += array.count
    }

    func deleteText(_ k: Int) -> Int {
        if cursor == 0 { return 0 }
        let deleteCount = k>cursor ? cursor : k
        let deleteIdx = cursor-deleteCount
        cursor -= deleteCount
        for _ in 0..<deleteCount {
            editor.remove(at: deleteIdx)
        }
        return deleteCount
    }

    func cursorLeft(_ k: Int) -> String {
        if cursor == 0 {
            return ""
        } else if k >= cursor {
            cursor = 0
            return ""
        } else {
            cursor -= k
        }
        let charCount = min(10,cursor)
        var result = ""
        for idx in cursor-charCount..<cursor {
            result += String(editor[idx])
        }
        return result
    }

    func cursorRight(_ k: Int) -> String {
        if editor.count <= cursor+k {
            cursor = editor.count
        } else {
            cursor += k
        }
        let charCount = min(10, cursor)
        var result = ""
        for idx in cursor-charCount..<cursor {
            result += String(editor[idx])
        }
        return result
    }
}
