//
//  InfoRequest.swift
//  GitHub_Project
//
//  Created by Aakash Adhikari on 2/18/20.
//  Copyright © 2020 Aakash Adhikari. All rights reserved.
//

import Foundation

enum DataError:Error {
    case noDataAvailable
}



struct InfoRequest {
    
    let resourceURL:URL
    let API_KEY = "86b2406c170cd35c61e5e173c540c60688ce74f1"
    
    init(userName: String){
        
        let image = OwnerImage()
        let name = UserName()
        let repo = IdInfo()
        
        
        let resourceString = "https://api.github.com/resource?api_key=\(API_KEY)&\(userName)"

        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    func getUserName (completion: @escaping (Result<[InfoRequest], Error>) -> Void)
    {
    let dataTask = URLSession.shared.dataTask(with: resourceURL) {data, _, _ in
        
        guard let jsonData = data else {
            completion(.failure(.noDataAvailable))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let dataResponse = try decoder.decode(DataResponse.self, from: jsonData)
            let idInfo = DataResponse.response.owner
        } catch{
            completion(.failure(.noDataAvailable))
        }
        
    }
    dataTask.resume()
    
    
    
}

}
