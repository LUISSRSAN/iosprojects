struct Town {
    let name :String
    var citizens :[String]
    var resources : [String:Int]
    
    init(townName:String,people:[String],stats:[String:Int]){
        name = townName
        citizens = people
        resources = stats
        
    }
    
    func fortify(){
        print("Defences increased!")
    }
    
}

var anotherTown = Town(townName:"Nameless Island", people: ["Tom Hanks"], stats:["Coconuts":100])
anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)
