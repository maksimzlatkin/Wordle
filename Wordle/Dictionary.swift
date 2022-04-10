//
//  Dictionary.swift
//  Wordle
//
//  Created by Maksim Zlatkin on 4/7/22.
//

import Foundation

class Dictionary{
    let url = "https://api.dictionaryapi.dev/api/v2/entries/en/"
    
    init(){
        
    }
    
    private func Data(from url: String){
        
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard let data = data, error == nil else {
                print("Failed")
                return
            }
            
            //var result:
            
        })
        
    }
    
    public func Test(){
        let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            print("one")
            if let data = data,
               let string = String(data: data, encoding: .utf8) {
                print("here")
                print(string)
            }
        }
    }
}
