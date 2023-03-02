import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }
    
}

struct Accueil: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack{
                ColorfulView()
                
                ZStack{
                    VStack(spacing: 1){
                        HStack(spacing: 14){
                            //
                            HStack{
                                // hello @user
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 16)
                                        .foregroundColor(Color.primary)
                                        .colorInvert()
                                        .opacity(0.7)
                                    HStack{
                                        VStack{
                                            VStack {
                                                dateview()
                                                
                                                    .foregroundColor(Color.primary)
                                                    .font(.system(size: 40
                                                                 ))
                                                
                                            }
                                        }
                                    }
                                } // date view
                                
                                
                            }
                            //
                            
                            
                            
                            
                            
                            //end of Hstack 1
                        }
                        .padding([.top, .leading, .trailing])
                        HStack(spacing: 14){
                            //
                            NavigationLink(destination: Quotefull()) {
                                HStack{
                                    // hello @user
                                    
                                    
                                    
                                    HStack{
                                        VStack{
                                            VStack {
                                                Quotefull()
                                                
                                                    .foregroundColor(Color.primary)
                                                    .font(.system(size: 40
                                                                 ))
                                                
                                            }
                                        }
                                        
                                    } // date view
                                    
                                    
                                }
                                //
                            }
                            
                            
                            
                            
                            //end of Hstack 1
                        }
                        
                        HStack(spacing: 14){
                            //
                            HStack(spacing: 14){
                                NavigationLink(destination: ENT()) {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 16)
                                            .foregroundColor(Color.primary)
                                            .colorInvert()
                                            .opacity(0.7)
                                        HStack{
                                            
                                            
                                            Text("ENT")
                                                .fontWeight(.semibold)
                                        }
                                        .foregroundColor(Color.primary)
                                        .font(.system(size: 40
                                                     ))
                                        
                                        
                                        
                                    }
                                } // hello @user
                                
                                NavigationLink(destination: Pronote()) {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 16)
                                            .foregroundColor(Color.primary)
                                            .colorInvert()
                                            .opacity(0.7)
                                        HStack{
                                            
                                            
                                            Text("Pronote")
                                                .fontWeight(.semibold)
                                        }
                                        .foregroundColor(Color.primary)
                                        .font(.system(size: 40
                                                     ))
                                        
                                    }
                                } // date view
                            }
                            //end of Hstack 2
                        }
                        .padding([.leading, .trailing])
                        HStack(spacing: 14){
                            //
                            HStack(spacing: 14){
                                NavigationLink(destination: TimerView()) {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 16)
                                            .foregroundColor(Color.primary)
                                            .colorInvert()
                                            .opacity(0.7)
                                        HStack{
                                            
                                            
                                            Text("Timer")
                                                .fontWeight(.semibold)
                                        }
                                        .foregroundColor(Color.primary)
                                        .font(.system(size: 40
                                                     ))
                                        
                                        
                                        
                                    }
                                } // hello @user
                                
                                NavigationLink(destination: CollectionView()) {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 16)
                                            .foregroundColor(Color.primary)
                                            .colorInvert()
                                            .opacity(0.7)
                                        HStack{
                                            
                                            
                                            Text("Manuels")
                                                .fontWeight(.semibold)
                                        }
                                        .foregroundColor(Color.primary)
                                        .font(.system(size: 40
                                                     ))
                                    }
                                } // date view
                            }
                            //end of Hstack 3
                        }
                        
                        
                        .padding([.top, .leading, .trailing, .bottom])
                        //end of Hstack 1
                    }
                }
                .navigationTitle("GlobalStudy")
            }
        }
    }
}



struct Accueil_Previews: PreviewProvider {
    static var previews: some View {
        Accueil()
    }
}

