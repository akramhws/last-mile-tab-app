import SwiftUI

struct ExploreView: View {
    @State private var query = ""
    let items = ["تصميم", "تطوير", "تسويق", "إدارة", "بيانات", "ذكاء اصطناعي"]

    var filtered: [String] {
        query.isEmpty ? items : items.filter { $0.contains(query) }
    }

    var body: some View {
        NavigationStack {
            List(filtered, id: \.self) { item in
                Label(item, systemImage: "circle.fill")
                    .foregroundStyle(AppConfig.primaryColor)
                    .font(.system(.body, design: AppConfig.fontDesign))
            }
            .searchable(text: $query, prompt: "ابحث...")
            .navigationTitle(AppConfig.tab2Label)
            .background(AppConfig.backgroundColor.ignoresSafeArea())
        }
    }
}
