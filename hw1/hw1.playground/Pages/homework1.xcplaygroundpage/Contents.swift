import Foundation

// 1st Homework

// 1st task

/*
 Даны 2 целых числа в качестве аргументов функции. Сложить остатки от деления этих аргументов на 5 и вернуть результат.
 */

func moduloSummary(number1: Int, number2: Int) -> Int
{
   let moduloValue = number1 % 5 + number2 % 5
    return moduloValue
}

moduloSummary(number1: 10, number2: 23)

// 2nd task

/*
 Даны 2 числа на вход функции. Первое - количество проголосовавших за патриотического кандидата ( Int ), второе - результат на выборах его в процентах (Double) ( сколько процентов от пришедших за него отдало голос ). Определить, сколько человек проголосовало на выборах.
 */

func howMuchVoices(patriotVoices: Int, patriotProcent: Double) -> Int{
    let allVoices = Double(patriotVoices) * 100 / patriotProcent
      return Int(allVoices)
}

howMuchVoices(patriotVoices: 4, patriotProcent: 33.83)

/*
 Не совсем понял в каком формате будут вводится данные о процентах.
 Функция основана на предположении что тип Double для аргумента отвечающего за процент голосов патриотеского кандидата будет
 вводится в виде 65,435 % а не 0,65435 , с учетом того что обычно голосующих достаточно много и для выражения части их в
 процентном выражении понадобятся десятые доли.
 В ином случае функция должна выглядеть так:
 let allVoices = Double(patriotVoices) / patriotProcent
 */

// 3rd task

/*
 Функция принимает на вход 3 аргумента - часы, минуты, секунды ( все Int ). Вернуть число секунд
*/

func clocks(hours: Int, minutes: Int, seconds: Int) -> Int
{
    let secondsSummary = hours * 60^2 + minutes * 60 + seconds
    return secondsSummary
}

 clocks(hours: 3, minutes: 20, seconds: 5)

// 4th task

/*
Написать 2 функции. Обе принимают на вход 2 аргумента - длина и ширина прямоугольника. Но первая возвращает его периметр, вторая - площадь. Все в целых числах ( Int )
*/

func rectanglePerimeter(length: Int, width: Int) -> Int
{
    let perimeter = length * 2 + width * 2
    return perimeter
}

func rectangleSquare (length: Int, width: Int) -> Int
{
    let square = length * width
    return square
}


rectanglePerimeter(length: 3, width: 4)
rectangleSquare(length: 35, width: 10)

// 5th task

/*
 Функция принимает на вход 2 аргумента. Первый - объем бутылки ( в долях от литра - 0.5, 0.7 и т д ), второй - крепость напитка ( десятичная дробь, все аргументы - Double). Вычислить количество выпитого чистого спирта в граммах ( миллилитры).
*/


func howMuchAlcohol(bottleSize: Double, procentOfAlcohol: Double) -> Int
{
    let drankAlcohol = bottleSize * procentOfAlcohol * 1000
    return Int(drankAlcohol)
}

howMuchAlcohol(bottleSize: 0.5, procentOfAlcohol: 0.4)


// Благодаря комментарию в задаче о том что крепость напитка будет указана в качестве десятично дроби я предположил что формат
// будет типа 0,40 а не 40 %.
// При решении не учтена разница в плотности спирта и други составляющих напитка.


// 6th task

/*
 Есть уравнение x^2 + 3x-44 = 0 Написать функцию, печатающую оба корня квадратного уравнения.Тут надо загуглить дискриминант и как корни уравнения вычислять. Используйте функцию sqrt() для вычисления квадратного корня. Коэффициенты квадратного уравнения ( множители перед x2, x и свободный член -44) передавайте в качестве аргументов в функцию.
 */

func quadraticEquation (a: Int, b: Int, c: Int) -> (squareRoot1: Double, squareRoot2:Double) {
    var x1: Double
    var x2: Double
    let d = Double(b^2 - 4 * a * c)
    if a != 0, b == 0, c == 0 {
        x1 = 0
        x2 = 0
    }
    if a != 0, b == 0, c != 0 {
        x1 = sqrt( -Double(c / a))
        x2 = 0
    }
    if a != 0, b != 0, c == 0 {
        x1 = 0
        x2 = Double(-(b / a))
    }
    else {
        if d < 0 {
            x1 = 0
            x2 = 0
        }
        if d == 0 {
            x1 = Double(-(b / (a * 2)))
            x2 = x1
        }
        else {
            x1 = Double((-Double(b) + sqrt(d))) / Double((2 * a))
            x2 = Double((-Double(b) - sqrt(d))) / Double((2 * a))
        }
    }
    let answer = (x1, x2)
    return answer
    

    
}

quadraticEquation(a: 1, b: 3, c: -44)

// 7th task

/*
 Написать функцию, принимающую в качестве аргументов длину катетов прямоугольного треугольника. Функция должна нарисовать в консоли треугольник из звёздочек
 */


func rectangleDraw (triangleLeg: Int) {
    for i in 1...triangleLeg {
        for _ in 1...i {
            print("*",terminator: "")
        }
        print("")
    }
}

rectangleDraw(triangleLeg: 5)
    

// 8th task

/*
 Написать функцию, вычисляющую длину окружности. Радиус на вход в качестве аргумента ( Double ). На выходе - длина окружности. Число пи так писать Double.pi .
 */

func circumferenceLength(radius: Double) -> Double
{
    let pi = Double.pi
    let circumference = radius * 2 * pi
    return circumference
}

circumferenceLength(radius: 3.5)

// 9th task

/*
 Написать функцию, принимающую на вход аргумент - длина стороны квадрата. Найти радиус вписанной окружности ( радиус вписанной в квадрат окружности - половина его стороны - нарисуйте и проверьте на бумажке) и вызвать функцию из п.8. Результат длины окружности вернуть из функции.
 */

func circumferenceLengthQuadrant(sideLenght: Double) -> Double
{
    let radius = sideLenght / 2
    return circumferenceLength(radius: radius)
}

circumferenceLengthQuadrant(sideLenght: 2.5)

// 10th task

/*
 Написать функцию, определяющую площадь круга по его радиусу ( то же, что в п.8, но площадь - загуглите формулу )
 */

func areaOfCircle(circleRadius: Double) -> Double
{
    let pi = Double.pi
    let circleArea = circleRadius * circleRadius * pi
    return circleArea
}

areaOfCircle(circleRadius: 5)

// 11th task

/*
 Написать функцию, принимающую на вход объём бутылки, крепость напитка и количество бутылок, выпитых на вечеринке. Используя функцию из п. 4 определить суммарный объем выпитого. ( функцию из п.4 обязательно нужно вызвать)
 */

func howMuchAlcoholSummary(bottleSize: Double, procentOfAlcohol: Double, bottlesQuanity: Int) -> Int
{
    return howMuchAlcohol(bottleSize: bottleSize, procentOfAlcohol: procentOfAlcohol) * bottlesQuanity
}

howMuchAlcoholSummary(bottleSize: 0.5, procentOfAlcohol: 40, bottlesQuanity: 3)


// Задача стояла определить суммарный обьем выпитого, так же нужно было обязательно использовать функцию из задания 4.
// Я предположил что задача стоит определить суммарный обьем выпитого спирта, а функцию нужно использовать из задания 5.
 

// 12th task
/*
 И функцию, по стороне квадрата вычисляющую площадь вписанного круга ( аналогично п. 9 )
 */

func circumferenceAreaQuadrant(sideLenght: Double) -> Double
{
    let radius = sideLenght / 2
    return areaOfCircle(circleRadius: radius)
}

circumferenceAreaQuadrant(sideLenght: 3)

// 13th task

/*
 Используем встроенную sqrt(). Написать функцию, по двум катетам прямоугольного треугольника возвращающую гипотенузу ( теорему пифагора гугланите )
 */

func hypotenuse(leg1: Double, leg2: Double) -> Double
{
    let hypotenuse = sqrt((leg1 * leg1) + (leg2 * leg2))
    return hypotenuse
}

hypotenuse(leg1: 3, leg2: 2)


