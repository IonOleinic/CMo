
var numbers:[Int]=[]
let args=CommandLine.arguments
var n:Int=Int(args[1]) ?? 0
for _ in stride(from:0,to:n,by:1){
    let numar=Int.random(in: 0...1001)
    numbers.append(numar)
}

func merge_sort(array:[Int]) ->[Int]{
    if(array.count<=1){
        return array
    }
    let middleIndex=array.count/2
    let leftArr=array[..<middleIndex]
    let rightArr=array[middleIndex...]
    return merge(left:merge_sort(array:Array(leftArr)),right:merge_sort(array:Array(rightArr)))
}

func merge(left:[Int],right:[Int]) ->[Int]{
    var result:[Int]=[]
    var i:Int=0
    var j:Int=0
    while(i<left.count && j<right.count){
        if(left[i]<right[j]){
            result.append(left[i])
            i+=1
        }
        else{
            result.append(right[j])
            j+=1
        }
    }
    while(i<left.count){
        result.append(left[i])
        i+=1
    }
    while(j<right.count){
        result.append(right[j])
        j+=1
    }
    return result
}


let result=merge_sort(array:numbers)
print("******   Merge Sort  "+args[1]+" numbers   ******")


