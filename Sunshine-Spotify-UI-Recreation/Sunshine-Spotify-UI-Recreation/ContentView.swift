//
//  ContentView.swift
//  Sunshine-Spotify-UI-Recreation
//
//  Created by Jimmy Lynch on 2/12/23.
//

import SwiftUI

struct soundControls: View {
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment:.leading) {
                    Rectangle()
                        .fill(.white)
                        .frame(width: 340, height: 5)
                        .opacity(0.40)
                        .shadow(color: Color("shadow"), radius: 1, x: 0, y: 0)
                    
                    Rectangle()
                        .fill(.white)
                        .frame(width: 10, height: 5)
                        .opacity(0.70)
                        .shadow(color: Color("shadow"), radius: 1, x: 0, y: 0)
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 12, height: 12)
                        .padding(.horizontal, 10)
                }
                HStack {
                    Text("0:10")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .shadow(color: Color("shadow"), radius: 1, x: 0, y: 0)
                        .opacity(0.90)
                    Spacer()
                    Text("-4:43")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .shadow(color: Color("shadow"), radius: 1, x: 0, y: 0)
                        .opacity(0.80)
                }
            }
            .padding(.bottom, 20)
            HStack {
                Image(systemName: "shuffle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                    .scaledToFit()
                
                Spacer()
                
                Image(systemName: "backward.end.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .scaledToFit()
                
                Spacer()
                
                Image(systemName: "pause.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .scaledToFit()
                
                Spacer()
                
                Image(systemName: "forward.end.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .scaledToFit()
            
                Spacer()
                
                Image(systemName: "repeat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                    .scaledToFit()
            }
            .padding(.bottom, 50)

            HStack(alignment: .bottom) {
                Image(systemName: "airport.extreme.tower")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(.top, 3)
            }
            .padding(.bottom, 20)
        }
    }
}

struct SongView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.down")
                    .foregroundColor(.white)
                    .scaledToFit()
                Spacer()
                Text("the zone")
                    .font(.subheadline)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
            }
            Spacer()
            Image("GeminiRights")
                .resizable()
                .frame(width: 340, height: 340)
                .shadow(color: Color("shadow"), radius: 10, x: 0, y: -2)
                .scaledToFit()
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    Text("Sunshine (feat. fousheé)")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text("Steve Lacy, Fousheé")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                Spacer()
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 25, height: 23)
                    .scaledToFit()
                    .foregroundColor(.white)
            }
            .padding(.bottom, 10)
        }
    }
}

struct PlayView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(gradient: Gradient(colors: [Color("stevedarkblue"), Color("steveblue")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
               .edgesIgnoringSafeArea(.all)
            VStack {
                SongView()
                soundControls()
            }
            .padding(.horizontal, 42)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
