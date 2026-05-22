import SwiftUI

@main
struct LMApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .preferredColorScheme(AppConfig.preferredColorScheme)
        }
    }
}
