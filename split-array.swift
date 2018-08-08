extension Array {
    // MARK: - Custom Swift Array Method  to Split
    func split(at: Int) -> (left: [Element], right: [Element]) {
        let ct = self.count
        let half = ct / 2
        let leftSplit = self[0 ..< half - 1]
        let rightSplit = self[at ..< ct]
        return (left: Array(leftSplit), right: Array(rightSplit))
    }
}
