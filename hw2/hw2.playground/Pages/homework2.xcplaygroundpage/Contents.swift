// 2nd Homework

// 1st task

/*
 Написать функцию с 2 целочисленными аргументы. Вернуть true, если первое делится без остатка на второе и false иначе
 */

func division(number1: Int, number2: Int) -> Bool
{
    var truefalse: Bool = true
    let number3 = number1 % number2
    if  number3 > 0 {
        truefalse = false
    }
    return truefalse
}

division(number1: 3, number2: 2)

// 2nd task

/*
 Написать функцию с 2 целочисленными аргументами. Вернуть наименьшее число из функции
 */

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

comparison(number1: 2, number2: 3)

// 3rd taks

/*
 Написать функцию с 2 целочисленными аргументами. Вернуть нечётный аргумент
 */

func oddNumber(number1: Int, number2: Int) -> Int
{
    var result = 0
    if number1 % 2 > 0 {
        result = number1
    }
    if number2 % 2 > 0{
        result = number2
    }
    else {
        print("All numbers are even.")
    }
    return result
}

oddNumber(number1: 2, number2: 2)


// 4th task

/*
 Написать функцию с 3 целочисленными аргументами. Вернуть наибольший аргумент
 */

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

biggerNumber(number1: 2, number2: 15, number3: 136)

// 5th task

/*
 На вход функции 3 числа - стороны требудеугольника. Во-первых, используя функцию существования треугольника, определить, существует ли он. Если существует - определить, какой он - равносторонний, равнобедренный или прост треугольник. Если он не существует из функции вернуть строчку “не существует”. А если да - один из типов “равносторонний”, “равнобедренный”, “прост треугольник”
 */

func triangleCheck(a: Int, b: Int, c: Int) -> String
{
    var triangleType = "doesn't exist"
    if a + b > c, b + c > a, a + c > b {
        triangleType = "exist"
    }
    if a == b {
        triangleType = "isosceles triangle"
    }
    if b == c {
        triangleType = "isosceles triangle"
    }
    if a == c {
        triangleType = "isosceles triangle"
    }
    if a == b, b == c {
        triangleType = "equilateral triangle"
    }
    return triangleType
}

triangleCheck(a: 3, b: 5, c: -56)

// 6th task

/*
 Написать функцию по её математическому описанию:
 y = f(x), где y = 2x -10, если x > 0, y = 0, если x == 0, y = x*x - 4x +14, если x < 0
 */

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

yValue(x: 3)


// 7th task

/*
 На вход функции 2 целочисленных аргумента. Определить, к какой координатной четверти относится эта точка.
 */

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

coordinatePlane(x: 3, y: -1)

// 8th task

/*
 На вход функции 1 целочисленный аргумент. Напечатать в консоль все НЕЧЕТНЫЕ числа, не превосходящие это число
 */

func oddNumbersQuanity(x: Int){
        var y = 1
        while y <= x, y % 2 != 0 {
            print (y)
            y += 2
        }
        
    }

oddNumbersQuanity(x: 4)

// 9th task
 
/*
 На вход функции 2 целочисленных аргумента. Напечатать квадраты чисел, находящиеся между 1 и 2 аргументом. ( внимание! 1 аргумент должен быть больше 2-го )
 */

func squaresNumbersBetween (x: Int, y:Int) {
    if x > y {
        var y1 = y
        while y < y1, y1 < x {
            print (y1 * y1)
            y1 += 1
        }
    }
    else {
        print ("wrong numbers")
    }
}

squaresNumbersBetween(x: 6, y: 5)

//10th task

/*
 Факториал - произведение всех чисел от 1 до данного числа. Факториал обозначается символом “!” в математике. Так, 5! = 1*2*3*4*5 = 120. Написать функцию, которая в цикле вычисляет факториал входного аргумента.
 */

func factorial (x: Int) -> Int {
    if x == 0 {
        return 1
    }
    if x < 0 {
        return 0
    }
    else {
        var multX = x
        var value = 1
        while multX > 0 {
              value *= multX
              multX -= 1
        }
        return value
    }
   }
 
factorial(x: 5)

// 11th task

/*
 В сбер принесли X рублей на Y лет, годовых N процентов. С помощью цикла определить, сколько денег получит клиент через Y лет. X, Y, N - аргументы функции
 */

func profit(x: Int, y: Int, n: Double) -> Double {
    if y > 0, x > 0, n > 0 {
        var y1 = y
        var value: Double = Double(x)
        while y1 > 0 {
            value = value * (n / 100 + 1)
            y1 -= 1
            
        }
        return value
}
    else {
        return 0.0
    }

}

profit(x: 5000, y: 5, n: 7.5)

// 12th task

/*
 На вход функции массив целых чисел. Вернуть из функции новый массив нечетных чисел, входящих в массив из аргумента.
*/

func evenArray (array: [Int]) {
    for i in array {
        
    }
    
}

evenArray

// 13th task

/*
 На вход функции массив целых чисел. Написать функцию, возвращающую максимальный элемент. Написать функцию, возвращающую минимальный элемент.
 */

func func1(array: [Int]) -> Int {
    var t: Int = array[0]
    for i in array {
        if i <= t {
            t = i
        }
    }
    return t
}

func1(array: [1,5,7,10,-5])

// 14th task

/*
 Написать функцию, печатающую только двузначные числа из массива ( массив в аргументе )
 */

// 15th task

/*
 
 */
