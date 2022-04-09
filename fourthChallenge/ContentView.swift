//
//  ContentView.swift
//  fourthChallenge
//
//  Created by Bruno Nascimento on 08/04/22.
//

import SwiftUI


struct ContentView: View {
    init() {
//        UINavigationBar
//            .appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//        UINavigationBar
//            .appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
//        UINavigationBar
//            .appearance().backgroundColor = .white
//        UINavigationBar
//            .appearance().tintColor = .white
//        UINavigationBar
//            .appearance().barTintColor = .blue
//        UINavigationBar
//            .appearance().isTranslucent = false
        
        
        
        
        let coloredNavAppearance = UINavigationBarAppearance()
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = .white
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
        
        
    }
    var body: some View {
        NavigationView {
            
            ScrollView(showsIndicators: false) {
                ZStack {
                    background
                    header
                    VStack {
                        list(listName: "Assistidos")
                        list(listName: "Na fila")
                    }
                    .padding(.top, 180)
                }
                
            }
            .navigationTitle("Irmandade Swift")
//            .navigationBarTitleDisplayMode(.inline)
            .background(Color.black)
            //            .padding(.top, 50)
        }
        .foregroundColor(Color.white)
        .ignoresSafeArea()
    }
    
    var header: some View {
        VStack {
            VStack(alignment: .leading, spacing: -15) {
                Text("irmandade")
                    .foregroundColor(Color.black)
                    .font(.system(size: 10))
                    .multilineTextAlignment(.leading)
                Text("swift")
                    .foregroundColor(Color.black)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            Spacer()
        }
    }
    
    var background: some View {
        ZStack(alignment: .top) {
            VStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(height: 120)
                
                Rectangle()
                    .fill(Color.black)
                
            }
            VStack {
                
                Spacer()
                    .frame(height: 60)
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 150, height: 120)
                Spacer()
            }
        }
        
    }
    
    func list(listName: String) -> some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("\(listName)")
                .font(.body)
                .foregroundColor(Color.white)
                .frame(maxWidth: 150, alignment: .leading)
                .padding(.leading, 15)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0..<10) {_ in
                        ZStack {
                            Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
                                )
                                .frame(width: 140, height: 250)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                            Image("video")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                            
                        }
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
