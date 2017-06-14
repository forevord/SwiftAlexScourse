//: Playground - noun: a place where people can play

import UIKit

//Dictionaries

//работают во много раз быстрее, чем массивы

var dict : [String:String] = ["машина" : "car", "мужик" : "man"]

dict["мужик"]

// объявить пустой dictionary
var dict3 = [String:String]()

dict3.count
dict3.isEmpty

//добавить новое значение в словарь

dict["комп"] = "computer"

dict

dict.keys
dict.values

// заменить значение ключа

dict["комп"] = "mac"
dict

// проверка обновилось ли значение ключа

dict.updateValue("mac", forKey: "комп")

//проверить наличие значения

if let comp = dict["комп2"] {
    print("\(comp)")
} else {
    print("no such value")
}

//удалить значение по ключу

dict.removeValue(forKey: "мужик")

// удалить все ключи и значения

//dict = [:]
//
//dict.isEmpty

//распечатать ключи и значения

for (key,value) in dict {
    print("\(key) - \(value)")
}

// распечатать метод 2

for key in dict.keys {
    print("key = \(key), value = \(dict[key]!)")
}

// Homework

/*
 1. Создать Dictionary как журнал студентов. Ключ - имя и фамилия студента, а значение - его оценка за кр. 5 студентов. 
    - повысить оценку нескольким студентам (перездали 2)
    - потом добавить ещё несколько студентов (пришли и сдали кр)
    - потом убрать несколько студентов (ушли, вычеркнуть из журнала)
    - посчитать общий балл группы (сумму), средний балл группы
 2. Создать Dictionary "Дни в месяцах", где месяц - ключ, а количество дней - значение. [String : Int]. 
    - вывести на экран попарно , используя тюпл
    - вывести используя цикл, но пройтись по массиву ключей и выводили пару
 3. Создать Dictionary ключ - адрес ячейки (А1, А2), значение - true (белая)/false(черная). Словарь 64 пары для всей доски, не делать вручную, не созавать 64 значение ручками, заполнить это всё циклом в цикле. 1 массив буквы и мы по нему проходились в цикле, для каждой буквы был другой цикл 1-8, на основании этих двух циклов мы создавали строку у которой первая буква, вторая цифра. и считали значение.
 
*/

//Home task 1 

print("##########################")
print("---------Homework---------")
print("##########################")
print("--------- Task 1 ---------")
var studentBook : [String:Int] = [
    "Петров"    : 10,
    "Сидоров"   : 7,
    "Никишин"   : 5,
    "Долмар"    : 4,
    "Гуннер"    : 9]

// Повысить оценку студентам

studentBook.updateValue(9, forKey: "Сидоров")
studentBook.updateValue(8, forKey: "Никишин")

print("Сидоров перездал и получил = \(studentBook["Сидоров"]!)")
print("Никишин перездал и получил = \(studentBook["Никишин"]!)")
print("-------------------------")

// Добавили ещё несколько студентов

studentBook["Петрив"]   = 1
studentBook["Никодим"]  = 3
studentBook["Горбунов"] = 7

print("Пришли новые студенты и получили:")
print("Петрив - \(studentBook["Петрив"]!)")
print("Никодим - \(studentBook["Никодим"]!)")
print("Горбунов - \(studentBook["Горбунов"]!)")
print("-------------------------")

// Ушли студенты

print("Ушли студенты и остались:")

studentBook.removeValue(forKey: "Сидоров")
studentBook.removeValue(forKey:  "Петрив")

for (key, value) in studentBook {
    print("\(key), с оценкой - \(value)")
}

print("-------------------------")

// Посчитать общий балл и средний балл

var sumBall = 0
for key in studentBook.values {
    sumBall += key
}
let sredniBall = Float(sumBall) / Float(studentBook.count)
print("Общий балл всех студентов = \(sumBall), средний балл = \(sredniBall)")

print("--------- Task 2 ---------")

let monthDictionaries = [
    "январь"    : 31,
    "февраль"   : 28,
    "март"      : 31,
    "апрель"    : 30,
    "май"       : 31,
    "июнь"      : 30,
    "июль"      : 31,
    "август"    : 31,
    "сентябрь"  : 30,
    "октябрь"   : 31,
    "ноябрь"    : 30,
    "декабрь"   : 30]

// вывести на экран тюплом
print("-------------------------")
print("Вывод тюплом:")
print("-------------------------")
for (key, value) in monthDictionaries {
    print("\(key) - \(value) дней")
}

// вывести на экран через ключ
print("-------------------------")
print("Вывод ключем:")
print("-------------------------")
for key in monthDictionaries.keys {
    print("\(key) - \(monthDictionaries[key]!) дней")
}
print("-------------------------")
print("--------- Task 3 ---------")

var chessDescDict = [String:Bool]()
let abcArray = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

for (index, value) in abcArray.enumerated() {
    for j in 1...abcArray.count {
//        print("\(i) \(j)")
        if (index % 2 == 1) && (j % 2 == 1) || (index % 2 == 0) && (j % 2 == 0) {
            let param = value + String(j)
            chessDescDict.updateValue(true, forKey: param)
        } else {
            let param = value + String(j)
            chessDescDict.updateValue(false, forKey: param)
        }
    }
}

print(chessDescDict)

chessDescDict["A1"]
chessDescDict["A2"]



