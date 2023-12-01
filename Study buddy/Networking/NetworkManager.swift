//
//  NetworkManager.swift
//  Study buddy
//
//  Created by yue on 11/30/23.
//



import Foundation
import Alamofire

class NetworkManager{
    
//    enum NetworkError: Error {
//        case invalidURL
//        case invalidResponse
//        case noData
//        case serverError(String) // Server error with message
//        case decodingError
//        case customError(String) // Custom error with message
//    }
//    
//    func fetchPosts(completion: @escaping (Result<[Post], NetworkError>) -> Void) {
//        let urlString = "http://35.236.194.218/api/posts/"
//        guard let url = URL(string: urlString) else {
//            completion(.failure(.invalidURL))
//            return
//        }
//
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                completion(.failure(.customError(error.localizedDescription)))
//                return
//            }
//
//            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
//                completion(.failure(.invalidResponse))
//                return
//            }
//
//            guard let data = data else {
//                completion(.failure(.noData))
//                return
//            }
//
//            do {
//                let posts = try JSONDecoder().decode([Post].self, from: data)
//                completion(.success(posts))
//            } catch {
//                completion(.failure(.decodingError))
//            }
//        }
//
//        task.resume()
//    }

    private let decoder = JSONDecoder()
    /// Shared singleton instance
    static let shared = NetworkManager()
    
    private init() { }
    
    /// Endpoint for dev server
    
    
    // MARK: - Requests
    func fetchRoster(completion: @escaping([Post]) -> Void){
        let endpoint = "http://35.236.194.218/api/posts/"
        decoder.dateDecodingStrategy = .iso8601
        
        AF.request(endpoint, method: .get)
            .validate()
            .responseDecodable(of:[Post].self, decoder: decoder ){ response in
                switch response.result{
                case.success(let posts):
                    completion(posts)
                case.failure(let error):
                    print("error in NetworkManager.fetchRoster: \(error.localizedDescription)")
                    completion([])
                }
                
            }
        
    }
    
   
    
    
}
