//
//  Manuels.swift
//
//
//  Created by Toinou on 30/04/2022.
//

import SwiftUI


struct CollectionView: View {
    
    let subjects = [
        ("Mathématiques", "🧮", URL(string: "https://www.education.gouv.fr/cid83/mathematiques.html")!),
        ("Français", "📚", URL(string: "https://www.education.gouv.fr/cid45/le-francais.html")!),
        ("Anglais", "🇬🇧", URL(string: "https://www.education.gouv.fr/cid86/anglais.html")!),
        ("Histoire-Géographie", "🗺️", URL(string: "https://www.education.gouv.fr/cid54/histoire-geographie.html")!),
        ("Physique-Chimie", "🔬", URL(string: "https://www.education.gouv.fr/cid69/physique-chimie.html")!),
        ("Sciences de la vie et de la Terre", "🌱", URL(string: "https://www.education.gouv.fr/cid85/sciences-de-la-vie-et-de-la-terre.html")!),
        ("Sciences économiques et sociales", "💰", URL(string: "https://www.education.gouv.fr/cid83/sciences-economiques-et-sociales.html")!),
        ("Philosophie", "🤔", URL(string: "https://www.education.gouv.fr/cid84/philosophie.html")!),
        ("Arts plastiques", "🎨", URL(string: "https://www.education.gouv.fr/cid73/arts-plastiques.html")!),
        ("Musique", "🎶", URL(string: "https://www.education.gouv.fr/cid74/musique.html")!),
        ("EPS", "🏃", URL(string: "https://www.education.gouv.fr/cid90/eps.html")!)
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        ZStack{
            ColorfulView()
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    
                    ForEach(subjects, id: \.0) { subject in
                        Link(destination: subject.2 ) {
                            VStack {
                                Spacer()
                                
                                Text(subject.1)
                                    .padding(.leading, 10)
                                    .font(.system(size: 36))
                                Spacer()
                                Text(subject.0)
                                    .padding(10)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .foregroundColor(Color("dynamicText"))
                                    .background(Color("dynamicBox"))
                            }
                        }
                    }
                    .frame(height: 120)
                    .background(Color("dynamicBox"))
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black.opacity(0.1), lineWidth: 1))
                }
            }
            .padding(.horizontal)
        }
    }
}



struct Collection_Preview: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
