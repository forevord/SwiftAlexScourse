//: Playground - noun: a place where people can play

import UIKit
import Foundation

//инициализация
//1
var str = String()
//2
var str2 = ""

//операции
//1
str = str + "a"
//2
str += "a"

// есть 2 типа переменных. Тип "значеие" и тип "ссылка". Строка - это значение, value type, после присваивания другой переменной происходит копирование
var a = 5
var b = a

// как это работает
var st1 = "a"
var st2 = st1
// после изменения строки st1 переменная st2 не изменяется, т.к. она не ссылается на st1, а является копией её на момент присваивания
st1 = "b"
st1
st2

// пустая строка или нет
st1.isEmpty
st2.isEmpty

//чтобы задать тип "символ", а не "строка"
let char1 : Character = "x"

//for img in "Hello World" {
//    print(img)
//}

//добавить символ в строку

st1.append(char1)

// строка через Objective C

(st1 as NSString).length
NSString(string: st1).length

// Строка - набор Unicod значений

let heart = "\u{1F496}"

var fun : Character = "ъ\u{301}\u{20dd}"

//ДЗ

/*
 1. Посчитать сумму пяти, используя в качестве оператора ?? и записать в строке всё:
    "5 + 2 + nil + 3 + nil = 10"
        - используя интерполяцию строк
        - используя конкатанацию строк
 2. Выбрать 5 красивых юникодов, и посчитать длину с посощью Swift и Objective C
 3. Использовать цикл for, английский алфавит, найти индекс буквы в алфавите.
*/

//3 

let abcEnglish : [Character] = ["a","b","c","d","e","f","g","h","i","j","q"]
let indexOfElement: Character = "d"
abcEnglish.index(of: indexOfElement)



