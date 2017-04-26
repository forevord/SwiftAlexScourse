//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let number : Double = 25

let a = 12
let b = 32

let c = a + b

// тюплы

let aT = (1, "Hello", true, 2.4)
let aT2 : (Int, String, Bool, Double) = (1, "Hello", true, 2.4)

aT.0
aT.1
aT.2
aT.3

var (simbolTuple, greatings, check, decimal) = aT2

simbolTuple
greatings
check
decimal

// добавление имён в тюплах

let tuple = (index:1, phrase:"Hello", registered:true, latency:2.4)

tuple.index
tuple.phrase
tuple.registered
tuple.latency

// изменить значение в tuple
//tuple.index = 2   - но если он var только

// присваивание тюплов, только с одинаковыми именами
let aS = (x:1, y:2)
var bS = (x:2, y:3)

bS = aS

//тюплы для сокращения кода

/*
let redColor   = "red"
let greenColor = "green"
let blueColor  = "blue"
*/

let (redColor, greenColor, blueColor) = ("red", "green", "blue")

// распечатать инфу тюплом в консоли
let totalNumber = 5
let merchantName = "Alex"
print("\(totalNumber) \(merchantName)")
print((totalNumber,merchantName))

// создадим тюпл: макс отжиманий, макс подтягиваний, макс приседаний. Создать его параметризированным, каждый параметр был с именем. 1.Распечатать этот тюпл через print, 2. Вывести каждый параметр в своей строке название параметра + его значение. Сперва через индекст, потом через параметр. 3. Сделать точно такой же для моей супруги, сколько он может сделать приседаний, отжиманий и прочее, затем взять в первом тюпле поменять всё местами, используя промежуточные переменные изменить все переменные местами.

var myParameters = (maxOtjim:20, maxPodtiagivania:10, maxPrisedania:50)
print(myParameters)
print((myParameters.0,myParameters.1,myParameters.2))
print("Отжимания:\(myParameters.maxOtjim)\nПодтягивания:\(myParameters.maxPodtiagivania)\nПриседания:\(myParameters.maxPrisedania)")

var herParameters = (maxOtjim:23, maxPodtiagivania:7, maxPrisedania:20)

myParameters.maxOtjim
myParameters.maxPodtiagivania
myParameters.maxPrisedania
herParameters.maxOtjim
herParameters.maxPodtiagivania
herParameters.maxPrisedania

//var peremennaja = myParameters.maxOtjim
//myParameters.maxOtjim = herParameters.maxOtjim
//herParameters.maxOtjim = peremennaja
print("-----------------------")
print("Do zameny:")
print("Мои параметры:\(myParameters)\nЕё параметры:\(herParameters)")
print("-----------------------")
var (dliaOtjimania, dliaPodtiagivania, dliaPrisedania) = myParameters
myParameters = herParameters
herParameters = (dliaOtjimania,dliaPodtiagivania,dliaPrisedania)
print("Posle zameny:")
print("Мои параметры:\(myParameters)\nЕё параметры:\(herParameters)")



//Optional types

var apples :Int? = 5
//apples = nil

if apples == nil{
    print(apples)
} else {
    apples! += 2
    print(apples)
}

//Optional Byding

let age = "60"

if Int(age) != nil {
    let ageNumber = Int(age)
}

if let ageNumber = Int(age) {
    ageNumber
}
// ДЗ. 1. Создать 5 констант, строковые константы, какие-то из цифр, какие-то цифры - буквы. Нужно найти сумму всех констант приведя их к Int.
// 2. Мы получаем какой-то тюпл с серверного запроса, он может придти с тремя параметрами: 1 статус код(Int), 2 Message (Строка опциональная), 3 ErrorMessage(строка опциональная). Если статус код находится в диапазоне от 200-300 исключительно - показать Massage, если вне диапазона - ErrorMassage.

// new comment
let gg = 10
