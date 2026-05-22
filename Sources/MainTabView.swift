import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label(AppConfig.tab1Label, systemImage: "house.fill")
                }
            ExploreView()
                .tabItem {
                    Label(AppConfig.tab2Label, systemImage: "magnifyingglass")
                }
            ProfileView()
                .tabItem {
                    Label(AppConfig.tab3Label, systemImage: "person.fill")
                }
        }
        .tint(AppConfig.primaryColor)
    }
}

#Preview {
    MainTabView()
}
