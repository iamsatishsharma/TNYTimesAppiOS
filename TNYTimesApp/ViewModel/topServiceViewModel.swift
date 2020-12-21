//
//  topServiceViewModel.swift
//  SeerSoultion
//
//  Created by Rinkal Saradva on 14/12/2020.
//  Copyright © 2020 Rinkal Saradva. All rights reserved.
//

import UIKit
import Foundation

    
   class topServiceViewModel{
    var topstoriesResult: topstoriesModel? {
           didSet {
           
             changeHandler?(.updateDataModel)
           }
       }
     let httpUtility = webservice()
     var changeHandler: ((BaseViewModelChange) -> Void)?
     
     func getTopStories() {
         
         
         if CheckInternet.Connection()
            {
            emit(.loaderStart)
     
                    httpUtility.GetData(Api: ApiEndpoints.topStoriesApi,resultType: topstoriesModel.self){ [weak self](ApiResponse,error)  in
                                self?.emit(.loaderEnd)
                               if(error == nil && ApiResponse != nil)
                               {
                                 
                                 self?.topstoriesResult = ApiResponse!
                              
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

