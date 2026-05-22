import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(1...6, id: \.self) { i in
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(.systemGray6))
                            .frame(height: 120)
                            .overlay(
                                Text("بطاقة \(i)")
                                    .font(.headline)
                            )
                    }
                }
                .padding()
            }
            .navigationTitle("الرئيسية")
        }
    }
}
