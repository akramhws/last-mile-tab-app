import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack(spacing: 16) {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 56))
                            .foregroundStyle(.blue)
                        VStack(alignment: .leading) {
                            Text("اسم المستخدم")
                                .font(.headline)
                            Text("user@example.com")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }
                Section("الإعدادات") {
                    Label("الإشعارات", systemImage: "bell")
                    Label("الخصوصية", systemImage: "lock")
                    Label("المساعدة", systemImage: "questionmark.circle")
                }
                Section {
                    Button(role: .destructive) {} label: {
                        Label("تسجيل الخروج", systemImage: "rectangle.portrait.and.arrow.right")
                    }
                }
            }
            .navigationTitle("حسابي")
        }
    }
}
