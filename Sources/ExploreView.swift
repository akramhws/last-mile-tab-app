import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    let items = (1...20).map { "عنصر \($0)" }

    var filtered: [String] {
        searchText.isEmpty ? items : items.filter { $0.contains(searchText) }
    }

    var body: some View {
        NavigationStack {
            List(filtered, id: \.self) { item in
                Label(item, systemImage: "square.fill")
            }
            .searchable(text: $searchText, prompt: "ابحث...")
            .navigationTitle("استكشاف")
        }
    }
}
