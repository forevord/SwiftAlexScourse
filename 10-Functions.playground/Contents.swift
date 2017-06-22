//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Functions"

//DRY - Do not repeat yourself

func hometaskNumber(number:Int) {
    if number == 1 {
        print("#########################")
        print("####### Homework ########")
        print("#########################")
        print("-------- Task \(number) ---------")
    } else {
        print("#########################")
        print("-------- Task \(number) ---------")
    }
}

let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

// функция, которая принимает массив и ничего не возвращает

func calculateMoney(walletToCalculate:[Int]) {
    var sum = 0
    for value in walletToCalculate {
        sum += value
    }
    print("sum = \(sum)")
}

calculateMoney(walletToCalculate: wallet)

// функция, которая принимает массив и возвращает значение

func calculateMoney2(walletToCalculate:[Int]) -> Int {
    var sum2 = 0
    for value in walletToCalculate {
        sum2 += value
    }
    return sum2
}

let money = calculateMoney2(walletToCalculate: wallet)

// функция с двумя параметрами

func calculateMoney3(walletToCalculate:[Int], type:Int) -> Int {
    var sum2 = 0
    for value in walletToCalculate {
        if value == type {
        sum2 += value
        }
    }
    return sum2
}

let money1 = calculateMoney3(walletToCalculate: wallet, type: 1)
let money5 = calculateMoney3(walletToCalculate: wallet, type: 5)

// функция возвращает 2 параметра, тюплом

func calculateMoney4(walletToCalculate:[Int], type:Int) -> (Summary:Int,Count:Int) {
    var sum2 = 0
    var count = 0
    for value in walletToCalculate {
        if value == type {
            sum2 += value
            count+=1
        }
    }
    return (sum2, count)
}

let (money20, count) = calculateMoney4(walletToCalculate: wallet, type: 5)
money20
count

// функция принимает 2 значение, одно из них дефолтное, возвращает 2 параметра, тюплом

func calculateMoney5(walletToCalculate:[Int], type:Int? = nil) -> (Summary:Int,Count:Int) {
    var sum2 = 0
    var count = 0
    for value in walletToCalculate {
        if (type == nil) || (value == type!) {
            sum2 += value
            count+=1
        }
    }
    return (sum2, count)
}


// 

func sayHi() -> () {
    print("Hi!")
}

sayHi()

//let hi = sayHi
//hi

let hi : () -> () = sayHi

func sayPhrase(phrase:String) ->Int? {
    print(phrase)
    return 0
}

//let phrase: (String) -> (Int?) = sayPhrase

// функция принмает любую функцию и ничего не возвращает
func doSomething(whatToDo:()->()){
    whatToDo()
}
doSomething(whatToDo: sayHi)

//функция принимает Sequence

func calculateMoney10(inSequence range:Int...) -> Int {
    var sum = 0
    for value in range{
        sum += value
    }
    return sum
    }


/*Homework
 
 1. Создать парочку функций, с коротким именем, который будут возвращать строку с символом, юникодом., затем создать один print и вывести всё вместе. 1 принт и в нём вызываются все функции.
 2. Реализовать функцию, которая будет принимать 2 параметра: строка и символ (А5б Б6) и она будет выводить слово "белая"/"черная". Затем эту строку нужно забирать из этой функции, делали "let строка = функция" и полученное значение распечатывали через print.
 3. Создать массив и функцию, которая будет принимать массив и возвращать массив в обратном порядке. 
    - Можно 1 функцию, которая будет принимать массив
    - которая будет принимать Sequence.
    - функция принимала Sequence и сама вызывала функцию, которая принимала масси
 4. Сделать функцию, которая принимает массив и изменили в массиве все элементы в обратном порядке и ничего не возвращает (in out)
 5. Создать функцию, принимает строку, возвращает тоже строку, но из неё:
    - убрать все знаки препинания, заменить на пробелы
    - все гласные перевести в заглавные
    - все согласные в маленькие
    - цифры на слова
*/


hometaskNumber(number: 1)
// Hometask 1

func dotMark()->String{
    return "."
}

func zptMark()->String{
    return ","
}

func questionMark()->String{
    return "?"
}
print(dotMark()+zptMark()+questionMark())


hometaskNumber(number: 2)
// Hometask 2
var alphabitChar : [Character] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
func playInChess (simbol:Character, number:Int) -> String {
    var color = ""
    for (key,value) in alphabitChar.enumerated() {
        if simbol == value {
            if ((key+1) % 2 == 1) && (number % 2 == 1) || ((key+1) % 2 == 0) && (number % 2 == 0) {
                color = "белая"
            } else {
                color = "черная"
            }
        }
    }
    return color
}
let chessColor = playInChess(simbol: "A", number: 2)
print("Клетка \(chessColor)")

//Hometask 3
hometaskNumber(number: 3)

func fromEndToStart(array:[Int]) -> [Int] {
    var arrayToReturn: [Int] = []
    for i in array {
        arrayToReturn.insert(i, at: 0)
    }
    return arrayToReturn
}

func sequenceToArray(inSequence range:Int...) -> [Int] {
    print("To input:\(range)")
    let finalArray = fromEndToStart(array: range)
    return finalArray
}

print("To exit:\(sequenceToArray(inSequence: 1,3,6,8,10))")

//Hometask 4
hometaskNumber(number: 4)

func arrayBackToFront(_ firstArray:inout [Character]){
    for i in firstArray {
        firstArray.insert(i, at: 0)
    }
}
arrayBackToFront(&alphabitChar)
print(alphabitChar)

//Hometask 5
hometaskNumber(number: 5)
//        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"   :

var stringFor5task = "Всем привет! Меня зовут Павел, и мне 27 лет! Я учу Swift..."
print("Было: \(stringFor5task)")


func characterWithNumberToWord(useCharacter:Character) -> String{
    var param = ""
    switch useCharacter {
    case "1" : param = "один"
    case "2" : param = "два"
    case "3" : param = "три"
    case "4" : param = "четыре"
    case "5" : param = "пять"
    case "6" : param = "шесть"
    case "7" : param = "семь"
    case "8" : param = "восемь"
    case "9" : param = "девять"
    case "0" : param = "ноль"
    default: break
    }
   return param
}

func lowCaseToUp(useCharacter:Character) -> Character{
    let fixCharacter = Character(String(useCharacter).uppercased())
    return fixCharacter
}

func upCaseToLow(useCharacter:Character) -> Character{
    let fixCharacter = Character(String(useCharacter).lowercased())
    return fixCharacter
}

func checkStringForSimbols(workWithString:String) -> String {
    var finalString:String = ""
    
    for i in workWithString.characters {
        switch i {
        case ",", ".", "!", "?"
            : finalString.append(" ")
        case "а", "у", "о", "ы", "и", "э", "я", "ю", "ё", "е"
            : finalString.append(lowCaseToUp(useCharacter: i))
        case "Б", "В", "Г", "Д", "Ж", "З", "Й", "К", "Л",
             "М", "Н", "П", "Р", "С", "Т", "Ф", "Х",
             "Ц", "Ч", "Ш", "Щ"
            : finalString.append(upCaseToLow(useCharacter: i))
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"
            : finalString.append(characterWithNumberToWord(useCharacter: i))
        default: finalString.append(i); break
        }
    }
    return finalString
}

let testString = checkStringForSimbols(workWithString: stringFor5task)
print("Стало: \(testString)")


