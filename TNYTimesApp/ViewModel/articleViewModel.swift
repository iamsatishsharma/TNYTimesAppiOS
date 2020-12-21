//
//  articleViewModel.swift
//  SeerSoultion
//
//  Created by Rinkal Saradva on 14/12/2020.
//  Copyright © 2020 Rinkal Saradva. All rights reserved.
//

import UIKit


  class articleViewModel{
    var articleResult: articleModel? {
           didSet {
           
             changeHandler?(.updateDataModel)
           }
       }
     let httpUtility = webservice()
     var changeHandler: ((BaseViewModelChange) -> Void)?
     
    func getArticles(FilterBy:String,Page:Int) {
         
         
         if CheckInternet.Connection()
            {
            emit(.loaderStart)
       
            let escapedAddress = FilterBy.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
                httpUtility.GetData(Api: "\(ApiEndpoints.articlesApi)&page=\(Page)&q=\(escapedAddress!)",resultType: articleModel.self){ [weak self](ApiResponse,error)  in
                                self?.emit(.loaderEnd)
                               if(error == nil && ApiResponse != nil)
                               {
                                 
                                 self?.articleResult = ApiResponse!
                                print(self?.articleResult)
                         self?.emit(.updateDataModel)
                                   
                               }
                               else
                               {
                                
                           self?.emit(.loaderEnd)
                                    self?.emit(.error(message: "03"))
                              
                            
                               }
                           }
   
         }
         else
         {
              self.emit(.loaderEnd)
                self.emit(.error(message: "01"))
         }
        
     }
    
    func emit(_ change: BaseViewModelChange) {
             changeHandler?(change)
    }
}

