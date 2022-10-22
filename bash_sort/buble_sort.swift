var numere:[Int]=[]
let args=CommandLine.arguments
var n:Int=Int(args[1]) ?? 0
for _ in stride(from:0,to:n,by:1){
    let numar=Int.random(in: 0...1001)
    numere.append(numar)
}

//print(numere)

func bubble_sort(array:[Int])->[Int]{
    var list:[Int]=array
    var temp:Int
    let length=array.count
    for i in stride(from:0,to:length,by:1){
        for j in stride(from:i+1,to:length,by:1){
            if(list[j]<=list[i]){
                temp=list[i]
                list[i]=list[j]
                list[j]=temp
            }
        }
    }
    return list
}


let result=bubble_sort(array:numere)
print("******   Bubble Sort  "+args[1]+" numbers   ******")
//print(result)


