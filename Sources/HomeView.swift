import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    // Hero card
                    RoundedRectangle(cornerRadius: 20)
                        .fill(
                            LinearGradient(
                                colors: [AppConfig.primaryColor, AppConfig.accentColor],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(height: 160)
                        .overlay(
                            VStack(alignment: .leading, spacing: 8) {
                                Text("مرحباً 👋")
                                    .font(.system(.title2, design: AppConfig.fontDesign).bold())
                                    .foregroundStyle(.white)
                                Text("ابدأ رحلتك اليوم")
                                    .font(.system(.subheadline, design: AppConfig.fontDesign))
                                    .foregroundStyle(.white.opacity(0.85))
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(20)
                        )

                    // Grid cards
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                        ForEach(0..<4) { i in
                            RoundedRectangle(cornerRadius: 16)
                                .fill(AppConfig.primaryColor.opacity(0.08))
                                .frame(height: 90)
                                .overlay(
                                    VStack(spacing: 6) {
                                        Image(systemName: ["star.fill","heart.fill","bolt.fill","leaf.fill"][i])
                                            .font(.title2)
                                            .foregroundStyle(AppConfig.primaryColor)
                                        Text(["مميز","مفضلة","سريع","جديد"][i])
                                            .font(.system(.caption, design: AppConfig.fontDesign).weight(.semibold))
                                    }
                                )
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(AppConfig.tab1Label)
            .background(AppConfig.backgroundColor.ignoresSafeArea())
        }
    }
}
