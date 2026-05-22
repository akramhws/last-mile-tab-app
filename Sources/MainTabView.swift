import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem { Label("الرئيسية", systemImage: "house.fill") }
                .tag(0)

            ExploreView()
                .tabItem { Label("استكشاف", systemImage: "magnifyingglass") }
                .tag(1)

            ProfileView()
                .tabItem { Label("حسابي", systemImage: "person.fill") }
                .tag(2)
        }
    }
}
