//
//  Emoji.swift
//  Emoji
//
//  Created by iOS Lab on 08/10/18.
//  Copyright © 2018 IOS. All rights reserved.
//

import Foundation

struct emoji
{ var symbol:String
  var name:String
  var description:String
  var usage:String
    
    init(symbol:String,name:String,description:String,usage:String)
    { self.symbol=symbol
      self.name=name
      self.description=description
    self.usage=usage
      
    }

};
