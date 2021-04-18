import Foundation

// 1st Homework

// 1st task

func moduloSummary(number1: Int, number2: Int) -> Int
{
   let moduloValue = number1 % 5 + number2 % 5
    return moduloValue
}

// 2nd task

func howMuchVoices(patriotVoices: Int, patriotProcent: Double) -> Int
{
    let allVoices = Double(patriotVoices) * 100 / patriotProcent
      return Int(allVoices)
}

/*
 Не совсем понял в каком формате будут вводится данные о процентах.
 Функция основана на предположении что тип Double для аргумента отвечающего за процент голосов патриотеского кандидата будет
 вводится в виде 65,435 % а не 0,65435 , с учетом того что обычно голосующих достаточно много и для выражения части их в
 процентном выражении понадобятся десятые доли.
 В ином случае функция должна выглядеть так:
 let allVoices = Double(patriotVoices) / patriotProcent
 */

// 3rd task

func clock(hours: Int, minutes: Int, seconds: Int) -> Int
{
    let secondsSummary = hours * 60^2 + minutes * 60 + seconds
    return secondsSummary
}

// 4th task

func rectanglePerimeter(length: Int, width: Int) -> Int
{
    let perimeter = length * 2 + width * 2
    func rectangleSquare () -> Int
    {
        let square = length * width
        return square
    }
    return perimeter
}

// 5th task

func howMuchAlcohol(bottleSize: Double, procentOfAlcohol: Double) -> Int
{
    let drankAlcohol = bottleSize * procentOfAlcohol * 1000
    return Int(drankAlcohol)
}
/*
 Благодаря комментарию в задаче о том что крепость напитка будет указана в качестве десятично дроби я предположил что формат
 будет типа 0,40 а не 40 %.
 При решении не учтена разница в плотности спирта и други составляющих напитка.
 */

// 8th task

func circumferenceLength(radius: Double) -> Double
{
    let pi = Double.pi
    let circumference = radius * 2 * pi
    return circumference
}

// 9th task

func circumferenceLengthQuadrant(sideLenght: Double) -> Double
{
    let radius = sideLenght / 2
    return circumferenceLength(radius: radius)
}

// 10th task

func areaOfCircle(circleRadius: Double) -> Double
{
    let pi = Double.pi
    let circleArea = circleRadius * circleRadius * pi
    return circleArea
}

// 11th task

func howMuchAlcoholSummary(bottleSize: Double, procentOfAlcohol: Double, bottlesQuanity: Int) -> Int
{
    return howMuchAlcohol(bottleSize: bottleSize, procentOfAlcohol: procentOfAlcohol) * bottlesQuanity
}

/*
 Задача стояла определить суммарный обьем выпитого, так же нужно было обязательно использовать функцию из задания 4.
 Я предположил что задача стоит определить суммарный обьем выпитого спирта, а функцию нужно использовать из задания 5.
 */

// 12th task

func circumferenceAreaQuadrant(sideLenght: Double) -> Double
{
    let radius = sideLenght / 2
    return areaOfCircle(circleRadius: radius)
}

// 13th task

func hypotenuse(leg1: Double, leg2: Double) -> Double
{
    let hypotenuse = sqrt(leg1 * leg1) + sqrt(leg2 * leg2)
    return hypotenuse
}





