import Foundation
import AsyncAlgorithms

// MARK: - Chain

do {
    let preamble = [
      "// Some header to add as a preamble",
      "//",
      ""
    ].async
    let lines = chain(preamble, URL(string: "https://www.apple.com/")!.lines)

    Task {
        for try await line in lines {
            print(line)
        }
    }
}

sleep(2)

// MARK: - CombineLatest

do {
    let array1 = [1, 2, 3, 4, 5].async
    let array2 = [6, 7, 8, 9, 10].async

    Task {
        for try await (element1, element2) in combineLatest(array1, array2) {
          print(element1, element2)
        }
    }
}

sleep(2)

// MARK: - Merge
do {
    let array1 = [1, 2, 3, 4, 5].async
    let array2 = [6, 7, 8, 9, 10].async

    Task {
        for try await element in merge(array1, array2) {
          print(element)
        }
    }
}

sleep(2)
