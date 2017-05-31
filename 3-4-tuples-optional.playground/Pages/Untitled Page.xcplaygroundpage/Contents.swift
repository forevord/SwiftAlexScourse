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
apples = nil

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
// 2. Мы получаем какой-то тюпл с серверного запроса, он может придти с тремя параметрами: 1 статус код(Int), 2 Message (Строка опциональная), 3 ErrorMessage(строка опциональная). Если статус код находится в диапазоне от 200-300 исключительно - показать Massage, если вне диапазона - ErrorMassage. После этого создать ещё один тюпл, где нет статус кода. Один из параметров всегда nil, а второй нет. проверять и первый и второй и если nil - выводить параметр, который не nil
// 3. Создадим тюпл студента, имя, номер машины и оценка за контрольную. Изначально в них нет никаких данных, все они nil. Нужно создать 5 таких тюплов для пяти разных человек. Затем заполнить сперва имена этих студентов. Потом если у студента есть машина - добавить номер машины. Если был результат контрольной 0-5, то добавить её. Если не писал - nil. Затем в print вывести имя студента, какая машина, на сколько сдал контрольную и был ли он на ней.

// Homework Optional
// Part 1
let k1 = "1"
let k2 = "2f"
let k3 = "3"
let k4 = "4f"
let k5 = "5"
var resultK:Int = 0

if Int(k1) != nil {
    resultK += Int(k1)!
    print("Result on 1 step:\(resultK)")
}
if Int(k2) != nil {
    resultK += Int(k2)!
    print("Result on 2 step:\(resultK)")
}
if Int(k3) != nil {
    resultK += Int(k3)!
    print("Result on 3 step:\(resultK)")
}
if Int(k4) != nil {
    resultK += Int(k4)!
    print("Result on 4 step:\(resultK)")
}
if Int(k5) != nil {
    resultK += Int(k5)!
    print("Result on 5 step:\(resultK)")
}

// Part 2.1

let serverStatus : (Statuscode:Int?, Message:String?, ErrorMessage:String?) = (200, "Server is OK", "Error!!!")

if serverStatus.Statuscode != nil{
    print("---------------------")
    print("First server response:")
    if (serverStatus.Statuscode! >= 200) && (serverStatus.Statuscode! < 300){
        print("Message: \(serverStatus.Message!)")
    } else {
        print("Message: \(serverStatus.ErrorMessage!)")
    }
} else {
    print("Can't check server status")
}

// Part 2.2

print("---------------------")
print("Second server response:")
let serverStatus2 : (Message:String?, ErrorMessage:String?) = ("Server is OK", "Error!!!")
if serverStatus2.Message != nil {
    print("Message: \(serverStatus2.Message!)")
} else {
    print("Message: \(serverStatus2.ErrorMessage!)")
}
print("---------------------")

// Part 3

var student1 : (name:String, carNumber:String?, mark:Int?)
var student2 : (name:String, carNumber:String?, mark:Int?)
var student3 : (name:String, carNumber:String?, mark:Int?)
var student4 : (name:String, carNumber:String?, mark:Int?)
var student5 : (name:String, carNumber:String?, mark:Int?)

student1.name = "Bob"
student1.carNumber = "5453-01"
























