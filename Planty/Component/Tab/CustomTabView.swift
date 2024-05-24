import SwiftUI

struct CustomTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNameSpace
    
    let tabBarItems: [(image: String, title: String)] = [
        ("house", "Home"),
        ("magnifyingglass", "Search"),
        ("person", "Author"),
    ]
    
    var body: some View {
        ZStack {
            CapsuleBackground()
            tabBarItemsView
        }
        .padding(.horizontal)
    }
    
    private var tabBarItemsView: some View {
        HStack {
            ForEach(0..<tabBarItems.count, id: \.self) { index in
                TabBarItemView(
                    image: tabBarItems[index].image,
                    title: tabBarItems[index].title,
                    isSelected: index + 1 == tabSelection,
                    animationNamespace: animationNameSpace
                )
                .onTapGesture {
                    withAnimation(.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.6)) {
                        tabSelection = index + 1
                    }
                }
            }
        }
        .frame(height: 80)
        .clipShape(Capsule())
    }
}

struct CapsuleBackground: View {
    var body: some View {
        Capsule()
            .frame(height: 80)
            .foregroundStyle(Color(.white))
            .shadow(radius: 2)
    }
}

struct TabBarItemView: View {
    let image: String
    let title: String
    let isSelected: Bool
    let animationNamespace: Namespace.ID
    
    var body: some View {
        VStack(spacing: 6) {
            Spacer()
            Image(systemName: image)
                .scaleEffect(isSelected ? 1.2 : 1.0)
                .animation(.easeInOut(duration: 0.2), value: isSelected)
            Text(title)
                .scaleEffect(isSelected ? 1.2 : 1.0)
                .animation(.easeInOut(duration: 0.2), value: isSelected)
            if isSelected {
                Capsule()
                    .frame(height: 10)
                    .foregroundStyle(.green)
                    .matchedGeometryEffect(id: "SelectedTabId", in: animationNamespace)
                    .offset(y: 3)
            } else {
                Capsule()
                    .frame(height: 8)
                    .foregroundStyle(.clear)
                    .offset(y: 3)
            }
        }
        .foregroundStyle(isSelected ? .green : .gray)
        .font(.headline)
        .fontWeight(isSelected ? .bold : .semibold)
    }
}

#Preview {
    CustomTabView(tabSelection: .constant(1))
        .previewLayout(.sizeThatFits)
        .padding(.vertical)
}
