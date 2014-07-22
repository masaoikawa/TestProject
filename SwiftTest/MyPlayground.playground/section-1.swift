// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var data:NSDictionary = ["ikawa":"masao", "masaki":"shintaro", "fujihashi":"mika","ikawa":"masaoikawa"]

var anObject = ["ikawa":"masao", "masao":"ikawamasao"]

anObject.count
data.count

var aDictionary:NSDictionary = ["aaa":"key1", "bbb":"key2", "aaa2":"key3", "a":"key4"]

var anArray = aDictionary.allKeysForObject("key3")


var tmp = data.allKeysForObject("shintaro")

class AxData : NSObject {

    var group:String=""
    var title:String=""

    init(aGroup:String, aTitle:String) {
        super.init()
        self.group = aGroup
        self.title = aTitle
    }
    init(aData:AxData) {
        super.init()
        self.group = aData.group
        self.title = aData.title
    }
}

@infix func == (left: AxData, right: AxData) -> Bool {
    return (left.title == right.title)
}
@infix func < (left: AxData, right: AxData) -> Bool {
    return (left.title < right.title)
}

@infix func > (left: AxData, right: AxData) -> Bool {
    return (left.title > right.title)
}




var a = AxData(aGroup: "AXELE", aTitle: "MASAO")

enum CompareResult {
    case Equal,LeftLarge,RightLarge
}

class AxCollection<T>:Sequence {
    final var aData : Array<T>
    
    init(_ elements: Array<T>) {
        self.aData = elements
    }
    
    convenience init() {
        self.init([])
    }
    
    convenience init(_ list: AxCollection<T>) {
        self.init(list)
    }
    
    convenience init(_ elements: T...) {
        self.init(elements)
    }
    
    func append(var newData:T) -> Int? {
        self.aData.append( newData )
        return self.aData.count
    }
    
    func generate() -> IndexingGenerator<[T]> {
        return self.aData.generate()
    }
    
    subscript(index:Int) -> T {
        get { return aData[index] }
        set { aData[index]=newValue }
    }
    
}
@assignment func += <T>(inout lhs: AxCollection<T>, rhs: T) {
    lhs.aData += rhs
}

@assignment func += <T>(inout lhs: AxCollection<T>, rhs: AxCollection<T>) {
    lhs.aData += rhs.aData
}

@assignment func += <T>(inout lhs: AxCollection<T>, rhs: Array<T>) {
    lhs.aData += rhs
}



var collection = AxCollection<AxData>()

a
collection.append(AxData(aData:a))

a.group="AXELE2"
a.title="IKAWAMASAO"
collection.append(AxData(aData:a))

a.group="AXELE3"
a.title="IKAWAMASAOMASAO"
collection.append(a)

collection[1]






