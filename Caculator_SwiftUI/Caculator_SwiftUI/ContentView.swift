//
//  ContentView.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    Text("331,460")
                        .padding()
                        .font(.system(size: 75))
                        .foregroundStyle(.white)
                }
                
                HStack {
                    Button {
                        
                    } label : {
                        Text("AC")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("+/-")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("%")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                
                HStack {
                    Button {
                        
                    } label : {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("x")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                
                HStack {
                    Button {
                        
                    } label : {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("-")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                
                HStack {
                    Button {
                        
                    } label : {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("+")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                
                HStack {
                    Button {
                        
                    } label : {
                        Text("0")
                            .frame(width: 160, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text(".")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button {
                        
                    } label : {
                        Text("=")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
