import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [AppConfig.primaryColor, AppConfig.accentColor],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 90, height: 90)
                    .overlay(
                        Text("👤")
                            .font(.system(size: 40))
                    )

                Text("المستخدم")
                    .font(.system(.title2, design: AppConfig.fontDesign).bold())

                Text("user@example.com")
                    .font(.system(.subheadline, design: AppConfig.fontDesign))
                    .foregroundStyle(.secondary)

                Button("تعديل الملف") {}
                    .buttonStyle(.borderedProminent)
                    .tint(AppConfig.primaryColor)

                Spacer()
            }
            .padding(.top, 32)
            .padding()
            .navigationTitle(AppConfig.tab3Label)
            .background(AppConfig.backgroundColor.ignoresSafeArea())
        }
    }
}
