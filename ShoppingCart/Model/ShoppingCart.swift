//
//  ShoppingCart.swift
//  ShoppingCart
//
//  Created by Malori Morow on 13/03/2019.
//  Copyright © 2019 Malori Morow. All rights reserved.
//
//inside the shoppingCart there is the shipping type and also the itemStore is also called overhere.

import Foundation

enum ShippingType:Double{
    
    case Standard = 0.0
    case express = 15.0
}

class ShoppingCart{
    var itemStore = ItemStore()
    var total:Double = 0
    var shippingType:ShippingType = .Standard
    private var selectedItemsDict: [String:Int] = [:] //[uid - quantity]
    let taxPercentage:Double = 10.00
    
    
    func getTotal()->Double{
        //calculate total before tax.
       var totalBeforeTax = 0.0
      for(uid,quantity) in selectedItemsDict{
       if let price = self.itemStore.getPriceFor(itemWith:uid){
      totalBeforeTax += (price * Double(quantity))
}


}
// calling an instance of the calculator inside the shoppingCart.
let calculator = Calculator(totalBeforeTax:totalBeforeTax, shippingCost: shippingType.rawValue, total: total,taxPercentage: taxPercentage)
        return calculator.getTotalAmount()

    }
    
    
    
    func add(item:Item){
        
        if var quantity = selectedItemsDict[item.uid]{
            quantity+=1
            selectedItemsDict[item.uid] = quantity
            }else{
            //the item doesn't exist yet.
            selectedItemsDict[item.uid] = 1
        }
    }
    
    func remove(item:Item){
        if var quantity = selectedItemsDict[item.uid]{
            
            quantity-=0
            selectedItemsDict[item.uid] = quantity
        }
        
        
    }
    
    func reset(){ // this is to reset the checkout view
        
        self.total = 0
        self.shippingType = .Standard
        self.selectedItemsDict = [:]
    }
}
