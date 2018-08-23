class ParentObject {
}

class ChildObject {
    var val: ParentObject? = ParentObject()  //強参照
//    weak var val: ParentObject? = ParentObject()  //弱参照
    init(parentObj: ParentObject) {
        val = parentObj
    } 
}

var parentObj: ParentObject? = ParentObject()
var childObj: ChildObject? = ChildObject(parentObj: parentObj!)

parentObj = nil
print(childObj?.val as Any)                              
