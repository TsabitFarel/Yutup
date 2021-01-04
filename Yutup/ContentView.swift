//
//  ContentView.swift
//  Yutup
//
//  Created by Tsabit Farel on 03/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                Explore()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                
                Subscription()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                
                Inbox()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Inbox")
                    }
                
                Library()
                    .tabItem {
                        Image(systemName: "play.circle.fill")
                        Text("Library")
                    }
            }
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        NavigationView {
            Content()
                .navigationBarItems(
                    leading:
                    HStack {
                    Button(action: {print("Hello Button")}) {
                        Image("Yutup")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 80, height: 80)
                        }
                    },
                        trailing:
                            HStack(spacing: 20) {
                            Button(action: {print("Hello Button")}) {
                                Image(systemName: "tray.full")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Button")}) {
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Button")}) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Button")}) {
                                Image("Profile")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .clipShape(Circle())
                            }
                        }
            ).navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Content: View {
    var body: some View {
        List {
            CellContent(thumbnail: "ThumbnailOne", profileImage: "Profile", title: "SwiftUI Tutorial - Parsing", description: "Video Description - 15k Watched - 1 Day ago", duration: "15:00")
            
            CellContent(thumbnail: "ThumbnailTwo", profileImage: "Profile", title: "Flutter Tutorial - Login UI", description: "Video Description - 10k Watched - 10 Hours ago", duration: "10:00")
            
            CellContent(thumbnail: "ThumbnailThree", profileImage: "Profile", title: "Flutter Tutorial - Custom UI", description: "Video Description - 25k Watched - 1 Week ago", duration: "20:00")
            
            CellContent(thumbnail: "ThumbnailFour", profileImage: "Profile", title: "Web Tutorial - Smooth Transitions", description: "Video Description - 5k Watched - 2 Weeks ago", duration: "6:00")
            
            CellContent(thumbnail: "ThumbnailFive", profileImage: "Profile", title: "Web Tutorial - Logun UI", description: "Video Description - 28k Watched - 2 Weeks ago", duration: "5:00")
        }
    }
}

struct CellContent: View {
    // Properties
    var thumbnail: String
    var profileImage: String
    var title: String
    var description: String
    var duration: String
    
    // Content 1
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(thumbnail)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 200)
                
                Text(duration)
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .font(.caption)
                    .cornerRadius(5)
                    .padding(.trailing, 0.5)
                    .padding(.bottom, 5)
                
            }
            
            HStack(spacing: 20) {
                Image(profileImage)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                        .bold()
                    
                    HStack {
                        Text(description).font(.caption)
                        Spacer()
                        
                        Image(systemName: "list.bullet")
                            .padding(.bottom, 20)
                            .padding(.trailing, 5)
                    }
                }
            }
        }
    }
}
    

struct Explore: View {
    var body: some View {
        Text("Explore Page")
    }
}

struct Subscription: View {
    var body: some View {
        Text("Subscription Page")
    }
}

struct Inbox: View {
    var body: some View {
        Text("Inbox Page")
    }
}

struct Library: View {
    var body: some View {
        Text("Library Page")
    }
}
