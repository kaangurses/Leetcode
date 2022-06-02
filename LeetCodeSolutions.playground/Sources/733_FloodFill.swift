// 733. Flood Fill

final class Solution733 {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        if image[sr][sc] == newColor { return image }
        var colorfulImage = image
        fillColor(&colorfulImage, sr, sc, newColor, image[sr][sc])
        return colorfulImage
    }

    private func fillColor(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int, _ colorToFill: Int) {
        if image.count <= sr || image[0].count <= sc || sr < 0 || sc < 0 || image[sr][sc] != colorToFill { return }
        image[sr][sc] = newColor
        fillColor(&image, sr-1, sc, newColor, colorToFill)
        fillColor(&image, sr, sc-1, newColor, colorToFill)
        fillColor(&image, sr, sc+1, newColor, colorToFill)
        fillColor(&image, sr+1, sc, newColor, colorToFill)
    }
}
