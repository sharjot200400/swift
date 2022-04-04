//
//  SignUpScreenView.swift
//  login
//
//  Created by user216710 on 3/27/22.
//

import SwiftUI

struct SignUpScreenView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmpassword: String = ""
    
    var body: some View {
        ZStack {
                   Color("BgColor").edgesIgnoringSafeArea(.all)
                   VStack {
                       ZStack{
                           
                           NavigationLink(destination:
                                           Home()
                               .navigationBarHidden(true),
                               label: {
                               Text("Guest >")
                                   .foregroundColor(.blue)
                                   .frame(width: 350, height: 50, alignment: .trailing)})
                           
                        }
                           
                       
                       VStack {
                           Text("Register")
                               .font(.largeTitle)
                               .fontWeight(.bold)
                               .padding(.bottom, 30)
                           
                           SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Sign Up with Google").foregroundColor(Color("PrimaryColor")))
                               .padding(.vertical)
                           
                           Text("Enter Details")
                               .foregroundColor(Color.black.opacity(0.4))
                           
                           TextField("Email Address", text: $email)
                               .font(.title3)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(Color.white)
                               .cornerRadius(50.0)
                               .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                               .padding(.vertical)
                           
                           SecureField("Password", text: $password)
                               .font(.title3)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(Color.white)
                               .cornerRadius(50.0)
                               .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                           
                           SecureField("Confirm Password", text: $confirmpassword)
                               .font(.title3)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(Color.white)
                               .cornerRadius(50.0)
                               .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                               .padding(.bottom, 30)
                           
                           NavigationLink(destination:
                                           SignUpScreenView()
                               .navigationBarHidden(true),
                               label: {
                               Text("Sign Up")
                                   .font(.title3)
                                   .fontWeight(.bold)
                                   .foregroundColor(Color("PrimaryColor"))
                                   .padding()
                                   .frame(maxWidth: .infinity)
                                   .background(Color.white)
                                   .cornerRadius(50.0)
                                   .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                   .padding(.vertical)                    })
                           
                       }
                       
                       Spacer()
                       Divider()
                       Spacer()
                       Text("Read our Terms & Conditions.")
                           .foregroundColor(Color("PrimaryColor"))
                       Spacer()
                       
                   }
                   .padding()
               }
    }
}

struct SignUpScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreenView()
    }
}

struct Home: View {
    var body: some View {
        ZStack{
            VStack{
                NavigationView{
                    VStack{
                        Text("Canadore College")
                            .font(.system(size: 35, weight: .light, design: .serif))
                            .padding(.top, -90)
                        Image("canadore")
                            .padding(.top, -60)
                            .navigationTitle("Home")
                        Text("Welcome to the App")
                            .padding(.top, 70)
                        
                        NavigationLink(destination: Investment(), label: {
                            Text("Investments")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                                .frame(width: (UIScreen.main.bounds.height - 50), height: 50)
                                .cornerRadius(10)
                                .background(Color.green) .padding(.vertical, 5)
                                
                        })
                        
                    }
                    
                }
            }
            Spacer()
            HStack{
                Text("Home").foregroundColor(.gray)
                Spacer().padding(.horizontal, 50)
                NavigationLink(destination: SignInScreenView().navigationBarHidden(true),
                               label: {
                    Text("Logout").foregroundColor(.blue)
                } )
            }.frame(width: 250, height: 750, alignment: .bottom)
        }
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct Investment: View{
    var body: some View{
        NavigationView{
            VStack{
                NavigationLink(destination: Purchase(), label: {
                    Text("Purchase")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.18), radius: 10, x: 0.0, y: 16)
                        .padding(.vertical)
                })
                Divider()
                NavigationLink(destination: Sell(), label: {
                    Text("Sell")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.18), radius: 10, x: 0.0, y: 16)
                        .padding(.vertical)
                    
                })
                
            }
            .navigationTitle("Investments")
        }
        
       
        
    }
}

struct Purchase: View{
    @State var index = 0
    
    var body: some View{
        VStack{
            HStack{
                Button(action: {
                    withAnimation(.spring()){
                        self.index = 0
                    }
                }){
                    Text("Stock")
                        .foregroundColor(self.index == 0 ? .white : .gray)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width:
                                (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(self.index == 0 ? Color.green : Color.clear)
                .clipShape(Capsule())
                
                Button(action: {
                    withAnimation(.spring()){
                        self.index = 1
                    }
                }){
                    Text("Mutual Funds")
                        .foregroundColor(self.index == 1 ? .white : .gray)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width:
                                (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(self.index == 1 ? Color.green : Color.clear)
                .clipShape(Capsule())            }
            .background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.top, 25)
            
            if self.index == 0{
                Stocks()
            }else{
                MutualFunds()
            }
        }
        Spacer()
        VStack{
            NavigationLink(destination: Portfolio(), label: {
           
                Text("Portfolio")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .frame(width: 250, height: 20, alignment: .center)
                    .padding()
                .background(Color.green)
                .cornerRadius(30)
                
            }
            
           )
        }
                .padding(.bottom, 60)
                .frame(width: 250)
    }
}

struct Portfolio: View{
    var body: some View{
        VStack{
            Text("Value")
                .foregroundColor(.black)
                .fontWeight(.bold)
                .font(.system(size: 40))
            ZStack{
                Circle()
                                .fill(Color.gray.opacity(0.1))
                                .frame(width: 250, height: 250, alignment: .center)
                                
                Text("$ 22032.12")
                    .foregroundColor(.black)
                    .fontWeight(.regular)
                    .font(.system(size: 44))
            }
            Spacer()
            Searchbar()
                .padding(.bottom, 150)
            
        }
    }
}

struct Searchbar: View{
    @State var text: String = ""
    var body: some View{
        TextField("Enter Stock or Mutual Fund", text: $text)
            .foregroundColor(.black)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .frame(width: (UIScreen.main.bounds.width - 50), height: 25)
    }
}

struct Sell: View{
    @State var index = 0
    
    var body: some View{
        VStack{
            HStack{
                Button(action: {
                    withAnimation(.spring()){
                        self.index = 0
                    }
                }){
                    Text("Stock")
                        .foregroundColor(self.index == 0 ? .white : .gray)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width:
                                (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(self.index == 0 ? Color.green : Color.clear)
                .clipShape(Capsule())
                
                Button(action: {
                    withAnimation(.spring()){
                        self.index = 1
                    }
                }){
                    Text("Mutual Funds")
                        .foregroundColor(self.index == 1 ? .white : .gray)
                        .fontWeight(.bold)
                        .padding(.vertical, 10)
                        .frame(width:
                                (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(self.index == 1 ? Color.green : Color.clear)
                .clipShape(Capsule())            }
            .background(Color.black.opacity(0.1))
            .clipShape(Capsule())
            .padding(.top, 25)
            
            if self.index == 0{
                Stocks()
            }else{
                MutualFunds()
            }
        }
        Spacer()
        VStack{
            NavigationLink(destination: Portfolio(), label: {
           
                Text("Portfolio")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .frame(width: 250, height: 20, alignment: .center)
                    .padding()
                .background(Color.green)
                .cornerRadius(30)
                
            }
            
           )
        }
                .padding(.bottom, 60)
                .frame(width: 250)
    }
}

struct Stocks: View{
    var body: some View{
        VStack{
            ScrollView{
                StockInfo(stockname: "Apple", stockprice: "127.76")
                StockInfo(stockname: "Google", stockprice: "2003.56")
                StockInfo(stockname: "Dow Jones", stockprice: "34955.89")
                StockInfo(stockname: "S&P 500", stockprice: "4575.52")
                StockInfo(stockname: "Nike", stockprice: "134.81")
                StockInfo(stockname: "Microsoft", stockprice: "310.70")
                StockInfo(stockname: "Tesla", stockprice: "1091.84")
            }
            .padding()
            .frame(width: (UIScreen.main.bounds.width - 50), height: (UIScreen.main.bounds.height - 450))
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
    }
}

struct StockInfo: View{
    var stockname: String
    var stockprice: String
    
    var body: some View{
        HStack{
            Text(stockname)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .padding()
            Spacer()
            Text("$ " + stockprice)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .padding()
            
        }
        
    }
}

struct MutualFundInfo: View{
    var name: String
    var price: String
    
    var body: some View{
        HStack{
            Text(name)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .padding()
            Spacer()
            Text("$ " + price)
                .foregroundColor(.black)
                .fontWeight(.bold)
                .padding()
            
        }
        
    }
}

struct MutualFunds: View{
    var body: some View{
            VStack{
                ScrollView{
                    MutualFundInfo(name: "S&P Futures", price: "4574")
                    MutualFundInfo(name: "Dow Futures", price: "34901")
                    MutualFundInfo(name: "NASDAQ Futures", price: "14989")
                    MutualFundInfo(name: "Russel 2000 Futures", price: "2078")
                    MutualFundInfo(name: "Crude Oil", price: "104.83")
                    MutualFundInfo(name: "Gold", price: "1927.40")
                    MutualFundInfo(name: "Silver", price: "25.10")
                    MutualFundInfo(name: "Vix", price: "19.63")
                    
                }
            }
            .padding()
            .frame(width: (UIScreen.main.bounds.width - 50), height:(UIScreen.main.bounds.height - 450))
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
    }
}
