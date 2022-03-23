//
//  BoookPreviewView.swift
//  ReadBookApp
//
//  Created by Hùng on 23/03/2022.
//
import SwiftUI

struct BookPriviewView: View {
    
    let book = [ myBook(title: "Juliet", author: "Anne Fortier", imageName: "nhasachmienphi-juliet")]

    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing : 5){
                    back_Button()
                        .padding(.horizontal)
                    
                    bookInfo(book: book)
                        .padding(.horizontal)
                    
                    aboutAuthorBook_Text(book: book)
                        .padding(.horizontal)
                    
                    descriptionBook_Text(book: book)
                        .padding(.horizontal)
                    
                    Spacer()
                }
            }
            .overlay(buttonAndMenu(book: book), alignment: .bottom)

        }
    }
}

struct back_Button: View {
    var body: some View {
        HStack {
            Button {
                print("Back to Book list")
            } label: {
                Image("ArrowLeftBack")
                    .resizable()
                    .frame(width: 20, height: 20)
                
            }
            Spacer()
        }
    }
}

struct bookInfo: View {
    let book : [myBook]
    var body: some View {
        VStack(alignment: .center){
            book[0].image
                .resizable()
                .frame(width: 191, height: 297)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            Text(book[0].title)
                .font(.system(size: 18))
                .fontWeight(.black)
                .foregroundColor(.black)
            Text(book[0].author)
                .font(.system(size: 16))
                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
        }
        .padding(.bottom,7)
    }
}

struct aboutAuthorBook_Text: View {
    let book: [myBook]
    var body: some View {
        VStack(alignment: .leading){
            Text("Về tác giả")
                .font(.system(size: 18))
                .fontWeight(.black)
                .foregroundColor(Color.black)
            Text("Anne Fortier (sinh năm 1971) là nhà văn người Đan Mạch gốc Canada, sống ở Mỹ và Canada từ năm 2002.")
                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
        }
    }
}

struct descriptionBook_Text: View {
    let book: [myBook]
    var body: some View {
        VStack(alignment: .leading){
            Text("Mô tả")
                .font(.system(size: 18))
                .fontWeight(.black)
                .foregroundColor(Color.black)
            Text("Với ai từng đam mê những hình ảnh và ngôn từ tuyệt đẹp, hay nuối tiếc với cái kết chưa có hậu về mối tình kinh điển Romeo và Juliet của Shakespeare, thì khi đọc cuốn tiểu thuyết Juliet này, độc giả sẽ không chỉ được hòa mình vào không khí ngất ngây của mối thiên tình sử ấy, mà còn được nghẹt thở cùng những cuộc phiêu lưu, rượt đuổi mạo hiểm, và hơn hết, là được thỏa lòng với hồi kết có hậu: đám cưới hạnh phúc tất yếu giữa chàng Romeo lịch lãm, can trường, và nàng Juliet thông minh, mạnh mẽ.")
                .foregroundColor(Color(#colorLiteral(red: 0.62, green: 0.62, blue: 0.62, alpha: 1)))
        }
        .padding(.bottom,7)
    }
}


struct readAndBookmark_Button: View {
    let book: [myBook]
    var body: some View {
        HStack {
            Button {
                print("Open the book")
            } label: {
                Text("Đọc sách")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    
            }
            .frame(width: 168.0, height: 57.0)
            .background(Color(red: 0.13, green: 0.72, blue: 0.57))
            .cornerRadius(10)
            .animation(.default)

            Spacer()
            
            Button{
                print("Adđ to bookmark")
            } label: {
                Text("Bookmak")
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }
            .frame(width: 168.0, height: 57.0)
            .background(Color(.black))
            .cornerRadius(10)
            .animation(.default)

        }
        .padding(.bottom,5)

    }
}

struct buttonAndMenu: View {
    let book: [myBook]
    @State private var selectedBottomNavBarItemIndex = 0
    var body: some View {
        VStack(alignment: .leading) {
            
            Spacer()
            
            readAndBookmark_Button(book: book)
                .padding(.horizontal)
                .padding(.bottom, 5)
            
            bottomNavBar(selectedBottomNavBarItemIndex: $selectedBottomNavBarItemIndex)
        }

    }
}


struct BookPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}


