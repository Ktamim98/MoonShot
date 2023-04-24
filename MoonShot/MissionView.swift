//
//  MissionView.swift
//  MoonShot
//
//  Created by Tamim Khan on 22/4/23.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    
    
    struct crewMember{
        let role: String
        let austronaut: Astronaut
    }
    
    let crew: [crewMember]
    
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView{
                VStack{
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                
                    
                    VStack(alignment: .leading){
                        
                        
                            Rectangle()
                            .frame(height: 2)
                            .foregroundColor(.lightBackground)
                            .padding(.vertical)
                        
                        
                        
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        
                        
                        Text(mission.description)
                        
                        Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.lightBackground)
                        .padding(.vertical)
                        
                        
                        Text("Crew")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(crew, id: \.role) { crewMember in
                                NavigationLink{
                                    AstronautView(astronaut: crewMember.austronaut)
                                }label: {
                                    HStack{
                                        Image(crewMember.austronaut.id)
                                            .resizable()
                                            .frame(width: 104, height: 72)
                                            .clipShape(Capsule())
                                            .overlay(
                                                Capsule()
                                                    .strokeBorder(.white, lineWidth: 1)
                                            )
                                        
                                        VStack(alignment: .leading){
                                            Text(crewMember.austronaut.name)
                                                .foregroundColor(.white)
                                                .font(.headline)
                                            Text(crewMember.role)
                                                .foregroundColor(.secondary)
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            }
                        }
                    }
                    
                }
                .padding(.bottom)
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
        
    }
    
    init(mission: Mission, astronauts: [String : Astronaut]) {
        self.mission = mission
        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return crewMember(role: member.role, austronaut: astronaut)
            }else{
                fatalError("could not found \(member.name)")
            }
            
        }
    }
    
}
    
    struct MissionView_Previews: PreviewProvider {
        static let missions: [Mission] = Bundle.main.decode("missions.json")
        static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
        
        static var previews: some View {
            MissionView(mission: missions[0], astronauts: astronauts)
                .preferredColorScheme(.dark)
        }
    }

