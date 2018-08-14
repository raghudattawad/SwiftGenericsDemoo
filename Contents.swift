//: Playground - noun: a place where people can play

import UIKit


//////////---->>>>GENERICS <---------//////

var str = "Hello, playground"

var stringArray  = ["one","two","three"]
var intAray = [1,2,3,4,5]
var doubleArray  =  [1.23,1004.4,290283.5,404.5]



func printStringArray (a :[String]){
    
    
    for s in a {
        print(s)
    }
}

func printIntArray (bb :[Int]){
    
    for ii in bb {
        
        print(ii)
    }

}
func printDoubleArray (dd: [Double]){
    
    
    for doubleVal in dd {
        
        print(doubleVal)
        
        
    }
    
    
}
//printStringArray(a: stringArray)
//printIntArray(bb: intAray)
//printDoubleArray(dd: doubleArray)



////  we can make function for only one by using Generics //

//<T> is generics
func printElementFromArray<T>(a: [T]){
    
    for element in a {
        
        print(element)
    }
}
printStringArray(a: stringArray)
printIntArray(bb: intAray)
printDoubleArray(dd: doubleArray)



///EX)2

func doNothing<T> (x:T) ->T {
    
    
    return x


}

//// what you pass that it will return ///
doNothing(x: "raghu")

doNothing(x: 123)
doNothing(x: 122.24455)
doNothing(x: true)



///Example 3 )



struct GenericArray<T> {
    
    /// array ///
    var items = [T]()
    
    mutating func push(item:T){
        
     items.append(item)
     
        
    }
    
    
    
}

var myFriendsList = ["Raghu","Bhaskar","harisha","Don"]

var array = GenericArray(items: myFriendsList)
array.push(item: "king")
array.items

array.push(item: "bad boy")
array.items











