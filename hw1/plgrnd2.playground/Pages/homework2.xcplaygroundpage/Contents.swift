// 2nd Homework

// 1st task

func division(number1: Int, number2: Int) -> Bool
{
    var truefalse: Bool = true
    let number3 = number1 % number2
    if  number3 > 0 {
        truefalse = false
    }
    return truefalse
}

// 2nd task

func comparison(number1: Int, number2: Int) -> Int
{
    var result = number1
    if number1 > number2 {
        result = number2
    }
    if number2 > number1 {
        result = number1
    }
    return result
}

// 3rd taks

func oddNumber(number1: Int, number2: Int) -> Int
{
    var result = 0
    if number1 % 2 > 0 {
        result = number1
    }
    if number2 % 2 > 0{
        result = number2
    }
    return result
}

// 4th task

func biggerNumber(number1: Int, number2: Int, number3: Int) -> Int
{
    var large = 0
    
    if number1 > number2 {
        large = number1
        if number3 > number1 {
            large = number3
        }
    }
    else {
        large = number2
        if number3 > number2 {
            large = number3
        }
        }
    return large
}
    
// 5th task

func triangleCheck(a: Int, b: Int, c: Int) -> String
{
    var triangleType = "doesn't exist"
    if a + b > c, b + c > a, a + c > b {
        triangleType = "exist"
    }
    else if a == b {
        triangleType = "isosceles triangle"
    }
    else if b == c {
        triangleType = "isosceles triangle"
    }
    else if a == c {
        triangleType = "isosceles triangle"
    }
    else if a == b, b == c {
        triangleType = "equilateral triangle"
    }
    return triangleType
}

// 6th task

func yValue(x: Double) -> Double
{
    var y: Double = 0
    if x > 0
    {
    y = 2 * x - 10
    }
    else if x == 0
    {
    y = 0
    }
    else if x < 0
    {
    y = x * x - 4 * x + 14
    }
    return y
}

// 7th task

func coordinatePlane(x: Int, y: Int) -> Int {
    var plane: Int = 0
    if x > 0, y > 0
    {
    plane = 1
    }
    else if x > 0, y < 0
    {
    plane = 4
    }
    else if x < 0, y > 0
    {
    plane = 2
    }
    else if x < 0, y < 0
    {
    plane = 3
    }
    return plane
}

// 8th task

func oddNumbersQuanity(x: Int){
        var y = 1
        while y <= x {
            print (y)
            y += 2
        }
        
    }

// 9th task
 
func squaresNumbersBetween (x: Int, y:Int) {
    if y > x {
        var x1 = x
        while x1 < y {
            x1 += 1
            print (x1 * x1)
        }
    }
    else {
        print ("wrong numbers")
    }
}

// 13th task

func func1(array: [Int]) -> Int {
    var t: Int = array[0]
    for i in array {
        if i >= t {
            t = i
        }
    }
    return t
}

func1(array: [1,5,7,10,-5])


