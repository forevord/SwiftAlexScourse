//: Playground - noun: a place where people can play

import UIKit

let total = 5 + 6 - 8 * 3 - 5 / 10
let div = 10 / 3
let rest = 10 % 3

var small = 0xff
small = small + 5

//для переполнения &+ &- &*, если нужно

//сложение строк

let hi = "Hi" + " there!"

// операторы сравнения

// <, >, >=, <=, ==, !=

let a = 6
let b = 5

if (a < b) {
    print("yes")
}
    print("no")

// тернарный оператор

var c : Int

/*
 if a > b {
    c = a
} else {
    c = b
}

 идентично с тернарным оператором */

c = (a > b) ? a : b

let text = "123"
let n = Int(text)

/*простой анрап
 if n != nil {
    c = n!
} else {
    c = 0
}
 */

// optional binding

/*
 if let opt = n {
    c = opt
} else {
    c = 0
}
 */

c = n ?? 13

// если nill - вернет 13, если не nill = n

var sum = 5

sum = sum + 1
sum += 1
//префиксный оператор sum++
//постфиксный оператор ++sum

let good = true

!good

// логические операторы
// && и, || или

let i = 5
let j = 6
let k = 7
let m = 8

if (i < 3) && (j > k) && ((m != k) || m > i) {
    
}

// range
0...5
0..<5

for i in 0...5 {
    print(i)
}

/*
 Домашнее задание:
 
 1. Посчитать количество секунд от начала года до моего рождения. Т.е. сколько секунд прошло от 1 января 0 секунд 0 минут до 12 августа 0 часов 0 минут 0 секунд
 2. Посчитать в каком квартале вы родились. Если родился в первом квартале - вывести на экран "Я родился в первом квартале"
 3. Подставить вместо чисел переменные и разобраться как оно работает (постфиксные и префиксные)
 4. У вас есть шахматная доска, в ней 64 клеточки. от 1 до 8. Нужно сказать какое поле черное. Фактически нам даны 2 переменные x,y, нужно сказать соответствует оно белому полю или черному.
*/

//Homework 1

print("-----------------")
print("Homework 1:")
print("-----------------")
let bDate = (day:12, month:3)
let dayInYear = [31,28,31,30,31,30,31,31,30,31,30]
let sekInDay = 86400
var finalRequest = 0
var check = 0

for i in dayInYear {
    check += 1
    if (check < bDate.month) {
        finalRequest += i
//        print(finalRequest)
    } else {
        break
    }
}
    finalRequest += bDate.day
    print("С начала года до \(bDate.day).\(bDate.month) прошло \(finalRequest * sekInDay) секунд.")



//Homework 2

print("-----------------")
print("Homework 2:")
print("-----------------")
let bMonth = 3
let bMonthOst = (bMonth % 3 > 0) ? 1 : 0

print("Вы родились в \(bMonth / 3 + bMonthOst)-м квартале.")

//Homework 3.1

print("-----------------")
print("Homework 3:")
print("-----------------")
let x = 2
let y = 1

let xParam = x % 2
let yParam = y % 2

if ((x <= 8) && (y <= 8)) && ((x > 0) && (y > 0)) {
    if ((xParam == 1) && (yParam == 1)) || ((xParam == 0) && (yParam == 0))  {
        print("Black")
    }  else {
        print("White")
    }
} else {
    print("Out of range")
}

//Homework 3.2

var output = ((xParam == 1) && (yParam == 1)) || ((xParam == 0) && (yParam == 0)) ? "Black" : "White"








