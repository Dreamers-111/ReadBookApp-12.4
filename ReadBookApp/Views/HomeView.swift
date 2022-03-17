//
//  HomeView.swift
//  ReadBookApp
//
//  Created by Như Phan on 3/7/22.
//

import SwiftUI

struct HomeView: View {
    @State var search: String = ""
    @State var username: String = "Dreamers"
    @State private var searchText = ""
    @State private var showCancelButton: Bool = false
    
    var body: some View {
        ScrollView {
            
            HStack() {
                Button(action: {
                    print("open the side menu")
                }, label: {
                    Image("align-left")
                        .resizable()
                        .frame(width: 35, height: 35)
                }
                )
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(uiImage: #imageLiteral(resourceName: "people"))
                        .resizable()
                        .frame(width: 42, height: 42)
                }
                )
            }.padding(.bottom, 5)
            
            HStack {
                Text("Chào mừng quay trở lại,")
                    .font(.custom("Poppins Medium", size: 16))
                    .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                    .padding(.trailing, -3)
                Text("\(username)")
                    .font(.custom("Poppins Medium", size: 16))
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .padding(.trailing, -3)
            }
            
            HStack {
                HStack{
                    Image(systemName: "magnifyingglass")
                        .frame(width: 15, height: 15)
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .offset(x: 4, y: 0)
                    
                    TextField("Tìm kiếm..", text: $searchText, onEditingChanged: {
                        isEditing in self.showCancelButton = true }, onCommit: {
                            print("onCommit")
                        })
                        .foregroundColor(.primary)
                        .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 9))
                    
                    Button(action: {
                        self.searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .opacity(searchText == "" ? 0 : 1)
                            .padding(.trailing, 4)
                            .foregroundColor(Color(#colorLiteral(red: 0.12941177189350128, green: 0.7215686440467834, blue: 0.572549045085907, alpha: 1)))
                    }
                }
                .padding(EdgeInsets(top: 8, leading: 2, bottom: 8, trailing: 0))
                .background(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 0.15000000596046448)))
                .cornerRadius(10)
                
                if showCancelButton  {
                    Button("Cancel") {
                        UIApplication.shared.endEditing(true)
                        self.searchText = ""
                        self.showCancelButton = false
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.12941177189350128, green: 0.7215686440467834, blue: 0.572549045085907, alpha: 1)))
                }
            }
            .padding(.top, 5)
            .navigationBarHidden(showCancelButton)
            
            HStack(spacing: 15) {
                Button(action: {
                    
                }, label: {
                    ZStack {
                        Image(uiImage: #imageLiteral(resourceName: "photo-1507842217343-583bb7270b66"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 160, height: 89)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.6784313917160034, green: 0.8117647171020508, blue: 0.9176470637321472, alpha: 0.8999999761581421)))
                                    .frame(width: 160, height: 89)
                            )
                        VStack(spacing: 2) {
                            Text("THỂ LOẠI")
                                .font(.system(size: 22))
                                .fontWeight(.heavy)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("# CHUYÊN MỤC")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                )
                
                Button(action: {
                    
                }, label: {
                    ZStack{
                        Image(uiImage: #imageLiteral(resourceName: "photo-1617635837145-cf409451c41e"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 160, height: 89)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(#colorLiteral(red: 0.5843137502670288, green: 0.7803921699523926, blue: 0.7372549176216125, alpha: 0.8999999761581421)))
                                    .frame(width: 160, height: 89)
                            )
                        VStack(spacing: 2) {
                            Text("BOOKMARK")
                                .font(.system(size: 22))
                                .fontWeight(.heavy)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("# TRUYỆN CỦA BẠN")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                )
            }.padding(.top, 5)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack(spacing: 25) {
                    Button(action: {
                        
                    }, label: {
                        Text("Tiểu thuyết")
                            .font(.system(size: 16))
                            .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                            .multilineTextAlignment(.center)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Khoa học")
                            .font(.system(size: 16))
                            .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                            .multilineTextAlignment(.center)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Lãng mạn")
                            .font(.system(size: 16))
                            .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                            .multilineTextAlignment(.center)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Tâm lý")
                            .font(.system(size: 16))
                            .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                            .multilineTextAlignment(.center)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Giáo dục")
                            .font(.system(size: 16))
                            .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                            .multilineTextAlignment(.center)
                    })
                }
            }
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 5, trailing: 0))
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack(spacing: 10){
                    Button(action: {
                        
                    }, label: {
                        VStack(alignment: .center) {
                            Image(uiImage: #imageLiteral(resourceName: "nhasachmienphi-20-gio-dau-tien"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text("20 giờ đầu tiên")
                                .font(.system(size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("Josh Kaufman")
                                .font(.system(size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        VStack(alignment: .center) {
                            Image(uiImage: #imageLiteral(resourceName: "nhasachmienphi-mot-ngay-cho-mot-doi"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text("Một ngày cho đời")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("Christin Antoni")
                                .font(.system(size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        VStack(alignment: .center) {
                            Image(uiImage: #imageLiteral(resourceName: "nhasachmienphi-vuon-tran-trui"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text("Vượn trần trụi")
                                .font(.system(size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("Desmond Morris")
                                .font(.system(size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        VStack(alignment: .center) {
                            Image(uiImage: #imageLiteral(resourceName: "nhasachmienphi-juliet"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text("Juliet")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("Anne Fortier")
                                .font(.system(size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    })
                }
            }
            
            Text("Sách mới")
                .font(.system(size: 24))
                .fontWeight(.heavy)
                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                .multilineTextAlignment(.center)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack(spacing: 10){
                    Button(action: {
                        
                    }, label: {
                        VStack(alignment: .center) {
                            Image(uiImage: #imageLiteral(resourceName: "nhasachmienphi-bay-nam-sau"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text("20 giờ đầu tiên")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("Josh Kaufman")
                                .font(.system(size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        VStack(alignment: .center) {
                            Image(uiImage: #imageLiteral(resourceName: "nhasachmienphi-soi-thao-nguyen"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text("Một ngày cho đời")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("Christin Antoni")
                                .font(.system(size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        VStack(alignment: .center) {
                            Image(uiImage: #imageLiteral(resourceName: "nhasachmienphi-20-gio-dau-tien"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text("Vượn trần trụi")
                                .font(.system(size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("Desmond Morris")
                                .font(.system(size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        VStack(alignment: .center) {
                            Image(uiImage: #imageLiteral(resourceName: "nhasachmienphi-juliet"))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 250)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            Text("Juliet")
                                .font(.system(size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.11, alpha: 1)))
                                .multilineTextAlignment(.center)
                            Text("Anne Fortier")
                                .font(.system(size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
                                .multilineTextAlignment(.center)
                        }
                    })
                }
            }
            
        }
        .padding(.horizontal, 20)
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}




