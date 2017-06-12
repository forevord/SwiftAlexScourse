//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//collettion types

let arr : Array<String> = ["a","b","c","d"]
// let arr : Array<String> Generic-тип
let arr1 : [String] = ["a","b","c","d"]
// let arr1 : [String] - стандартный указатель типа в Swift
// массив может состоять из элементов одного типа
arr1.count
//создаем пустой массив строк
var arrMutable = [String]()

// arrMutable.count == 0   =  arrMutable.isEmpty

if arrMutable.isEmpty {
    print("array is Empty")
}

arrMutable += arr1
arrMutable += ["e"]
arrMutable.append("f")

// массивы - Value type, происходит копирование

var arrMutable2 = arrMutable
arrMutable
arrMutable2
arrMutable2[0] = "1"
arrMutable
arrMutable2

//range массива
arrMutable[1...4]
//arrMutable[1...4] = ["0"]
arrMutable

//вcnавить элемент между индексами

arrMutable.insert("-", at: 2)

// удалить по индексу

arrMutable.remove(at: 2)
arrMutable

// создать массив с одинаковыми значениями повторяющимися

let testArray = [Int](repeating: 100, count: 10)

let money = [100, 1, 5, 20, 1, 50, 1, 1, 20]

//for var i = 0; i < 9; i++ {
//    print("i = \(i)")
//}

// индекс массива с обычным счетчиком
var index = 0
for i in money {
    print("Index:\(index), Value:\(i)")
    index += 1
}

//функция с встроенным индексами массива

for (index, value) in money.enumerated() {
    print("Index:\(index), Value:\(value)")
}

//ДЗ

/*
 
1. Создать массив в который будет входить 12 месяцев, количество дней в этом месяце. 
 - вывести количество дней в месяцах, весь массив
 - создать массив с именами месяцев
 - вывести название и количество дней из разных массивов одним циклом
 - Затем вместо этих двух массивов нужно сделать тюпл , (название, количество дней)
 - повторить предыдущее название используя массив тюплов
 - вывести количество дней в месяце задом наперёд, в обратном порядке, i--
 - Задание с рассчетом количества дней до определённой даты. День рождения. Посчитать массивом количество дней до Дня рождения.
 
2. Создать массив опциональных Int, заполнить его константами, nill и Int. В цикле посчитать сумму и вывести эту сумму
 - используя Optional Binding
 - Force Unraping
 - оператор ??
 
3. Создат строку "Алфавит" a-z, пройтись по порядку по каждому Character, создать пустой массив строк. Нужно брать Character, переводить его в Строку и добавлять в пусктой массив. Добавлять таким образом, чтобы получился массив строк задом на перёд.
 
*/



//1 Home task

print("--------- Hometask 1.1 ---------")
print("--------- Вывод массивов месяц/день ---------")
let dayInYear = [31,28,31,30,31,30,31,31,30,31,30]
let monthInYear = ["январь","февраль","март","апрель","май","июнь","июль","август","сентябрь","октябрь","ноябрь","декабрь"]

for (index2, value2) in dayInYear.enumerated() {
    print("\(monthInYear[index2]) - \(value2) дней")
}

print("--------- Hometask 1.2 ---------")
print("--------- Вывод тюплов месяц/день ---------")

let monthArrayTuples : [(month : String, days : Int)] = [
        ("январь",31),
        ("февраль",28),
        ("март",31),
        ("апрель",30),
        ("май",31),
        ("июнь",30),
        ("июль",31),
        ("август",31),
        ("сентябрь",30),
        ("октябрь",31),
        ("ноябрь",30),
        ("декабрь",30)]

for indexTuple in monthArrayTuples {
    print("\(indexTuple.month) - \(indexTuple.days)")
}

print("--------- Hometask 1.3. ---------")
print("--------- Вывод тюплов задом наперёд ---------")

var strangeIndex = monthArrayTuples.count

for element in monthArrayTuples {
    strangeIndex -= 1
    var sequence = monthArrayTuples[strangeIndex]
    print("\(sequence.month) - \(sequence.days)")
}

print("--------- Hometask 1.4. ---------")
print("--------- Дней до ДР ---------")
let bDay : (month: String, day: Int) = ("март", 12)

var sumdays = 0
for checkBday in monthArrayTuples {
    if checkBday.month != bDay.month {
        sumdays += checkBday.days
        print("+ \(checkBday.month) = \(sumdays)")
    } else {
        sumdays += bDay.day
        print("+ \(checkBday.month) = \(sumdays)")
      break
    }
}

//2 Home task

print("--------- Hometask 2.1 ---------")
print("--------- Optional Binding ---------")

let optionalIntArray : [Int?] = [10, 2, nil, 3, 10, nil, 30, nil]

var unOptionalSumm = 0
for param in optionalIntArray {
    if let constantName = param {
        unOptionalSumm += constantName
    }
}
print("Final summ with Optional Binding: \(unOptionalSumm)")

print("--------- Hometask 2.2 ---------")
print("--------- Forced Unwrap ---------")

var unOptionalSumm2 = 0

for param1 in optionalIntArray {
    if param1 != nil {
        unOptionalSumm2 += param1!
    }
}
print("Final summ with Forced Unwrap: \(unOptionalSumm2)")

print("--------- Hometask 2.3 ---------")
print("--------- Operator ?? ---------")

var unOptionalSumm3 = 0

for param2 in optionalIntArray {
    unOptionalSumm3 += param2 ?? 0
}
print("Final summ with ?? : \(unOptionalSumm3)")

//3 Home task

print("--------- Hometask 3 ---------")
print("--------- Char в String ---------")
var alphabitChar : [Character] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
var alphabitString : [String] = []

var param = 0
for (index1, value1) in alphabitChar.enumerated() {
    print("\(index1) \(value1)")
    alphabitString.insert(String(value1), at: 0)
}

print("--------- Алфавит задом наперёд ---------")
for (index3, value3) in alphabitString.enumerated() {
    print("\(index3) \(value3)")
}

