struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .environment(\.colorScheme, .dark)
            
            // This child view will inherit the dark color scheme set above
            ChildView()
        }
    }
}

struct ChildView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("Child View")
            .foregroundColor(colorScheme == .dark ? .white : .black)
    }
}
