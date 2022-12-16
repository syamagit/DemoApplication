//
//  APIService.swift
//  MockProject
//
//  Created by sypatra on 15/12/22.
//

import Foundation

class APIService : NSObject {
    private let sourceURL = URL(string: "https://mocki.io/v1/15327d82-c009-4089-abc4-70a15daa4d61")!
    
    func apiToGetUserData(completion : @escaping ([UserData]) -> ()){
        
        URLSession.shared.dataTask(with: sourceURL) { (data, urlResponse, error) in
            if let data = data {
                print(data)
                let jsonDecoder = JSONDecoder()
                jsonDecoder.dateDecodingStrategy = .iso8601
                
                let userData = try! jsonDecoder.decode([UserData].self, from: data)
                print(userData)
                
                completion(userData)
            }
            if let url = urlResponse{
                print(url)
            }
            if let error = error{
                print(error)
            }
                
        }.resume()
    }
}
