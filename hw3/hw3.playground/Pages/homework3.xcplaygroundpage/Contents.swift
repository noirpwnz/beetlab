import Foundation
// 3rd homework

//1st task
//Функция принимает на вход целое число. Если оно двузначное - вернуть массив всех нечетных чисел, не больше этого числа кроме 12,23 и 91. Если оно однозначное - вернуть массив всех целых чисел, не больше этого числа.

func returnTuple(leg1: Double, leg2 :Double) -> (Double, Double)
{
    let hypotenuse = sqrt(leg1 * leg1 + leg2 * leg2)
    let square = leg1 * leg2 / 2
    var answer = (0.0, 0.1)
    answer.0 = hypotenuse
    answer.1 = square
    return answer
}

returnTuple(leg1: 3, leg2: 2)

//2nd task


//11th task

func shiftedArray(num: Int) -> [Int]
{
    var answer: [Int]
    if num > 9 {
        var i: Int = 0
        while i < num {
            i += 1
            if i % 2 != 0
        }
        
    }
    else {
        while i
    }
     
}


//Leetcode 1480
//Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
//Return the running sum of nums.

func runningSumCalc(nums: [Int])
{
    var runningSum = [Int]
    for (index, value) in nums.enumerated() {
               if index > 0 {
                   runningSum.append(runningSum.last! + value)
               } else {
                   runningSum.append(nums[0])
               }
    print (runningSum)
}



