
struct myOptional {
    var property = 123
    func method (){
        print("I am the struct's method.")
    }
}

let myOptional: myOptional!


myOptional = MyOptional()
print(myOptional!.property)

