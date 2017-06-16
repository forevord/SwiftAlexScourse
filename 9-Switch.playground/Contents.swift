//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Switch!"

var age = 67

switch age {
    case  0...16:       print("школота")
    case 17...21:       print("студент")
    case 22...50:       print("профи")
    case 51, 56, 60:    print("сработало!")
    
    default: break
}

/* если дописать оператор "fallthrought", то выполняется и текущее условие и следующиее:
    case  0...16:       print("школота"); fallthrought
    case 17...21:       print("студент")


*/

var name = "Alex"

switch name {
case "Alex" where age < 50:
    print("Hi buddy!")
case "Alex" where age >= 50:
    print("I don't know you")
default:
    break
}

// break после каждой строки не ставим, как в Objective C
// for _ in 0..<20 , "_" может заменять i

// brake выбрасывает из цикла, когда условие до него доходит

// label brake
mainLoop: for _ in 0...100 {
    for i in 0..<20 {
        if i == 10 {
            break mainLoop
        }
        print(i)
    }
}

// continue продолжает цикл

//работа с тюплами

// _ - wild card

switch (name,age) {
    case ("Alex", 60)   : print("Hi Alex 60!")
    case ("Alex", 59)   : print("Hi Alex 59!")
    // используем "_", если нас не интересует возраст
    case ("Alex", _)    : print("Hi Alex!")
default:
    break
}

// optional binding
var optional :Int? = 5

if let a = optional {
    print(" \(a) != nil")
}

//value binding

switch (name,age) {
case ("Alex", 60): print("Hi Alex 60!")
case ("Alex", 59): print("Hi Alex 59!")
    //value binding
case (_, let number) where number >= 65 && number <= 70: print("Hi, old man")
case ("Alex", _): print("Hi Alex!")
default:
    break
}

// совпадение паттернам, если сопадает, то одно, нет - другое.

let point = (5,5)

switch point {
case let (x,y)  where x == y:   print("x == y")
case let (x,y)  where x == -y:  print("x == -y")
case (_, let y) where y < 0:    print("y < 0")
default: break
    
}

// работа с разными типами данных

let array : [Any] = [5, 5.4, Float(5.4)]

switch array[2] {
case let a as Int:
    print("Int")
case let a as Float:
    print("Float")
case let a as Double:
    print("Double")
default:
    break
}

// либо!!!!!!!!!!!

switch array[1] {
case _ as Int:
    print("Int")
case _ as Float:
    print("Float")
case _ as Double:
    print("Double")
default:
    break
}


/* Homework
 
 1. Создать строку произвольного текста 200 символов, предложение и прочее. Создать цикл и в нём встроенный switch, посчитать:
    - количество гласных
    - количество согласных
    - количество цифр
    - количество знаков препинания
 Всё сделать используя Switch внутри цикла.
 2. Создать Switch, который будет принимать возраст человека и выводить описание периода жизни. (как в уроке)
 3. Есть студент, у него есть фамилия, имя и отчество. 3 строки. В одном Switch сделать следующее:
    - если его имя начинается с "А" или с "О", то обращаться к студенту по имени
    - если его отчество начинается с буквы "В" или "Д", обращаться по имени и отчеству
    - если его фамилия начинается с буквы "Е" или "З", то обращаться только по фамилии
    - иначе обращаться по Имени Отчеству Фамилии
 4. Морской бой. Есть поле морского боя 10 на 10. Можно использовать цифры, можно буквы и цифры. Осталось несколько кораблей, некоторые целые, некоторые подбитые, однотрубники, двутрубники. Нужно создать Switch, который будет получать тюпл Point (x,y), вернуть одно из трёх значений:
    - мимо
    - ранен
    - убит
 
*/

print("##########################")
print("-------- Homework --------")
print("##########################")
print("--------- Task 1 ---------")

let predlojenie = "Привет, Александр! Спасибо 12 раз за твои шикарные уроки!"
var znachenie   : (sumGlassnye:Int, sumSoglasnye:Int, sumCyfry:Int, sumZnakov:Int) = (0, 0, 0, 0)

for i in predlojenie.characters {
    switch i {
    case let cyfra where Int(String(cyfra)) != nil          : znachenie.sumCyfry += 1
    case "а", "у", "о", "ы", "и", "э", "я", "ю", "ё", "е",
         "А", "У", "О", "Ы", "И", "Э", "Я", "Ю", "Ё", "Е"   : znachenie.sumGlassnye += 1
    case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м",
         "н", "п", "р", "с", "т", "ф", "х", "ц", "ч","ш",
         "щ", "Б", "В", "Г", "Д", "Ж", "З", "Й", "К", "Л",
         "М", "Н", "П", "Р", "С", "Т", "Ф", "Х",
         "Ц", "Ч", "Ш", "Щ"                                 : znachenie.sumSoglasnye += 1
    case let znack where znack != " "                       : znachenie.sumZnakov += 1
    default:
        break
    }
}

print(znachenie)

print("--------------------------")
print("##########################")
print("--------- Task 2 ---------")

let nameOfPerson    = "Pavel"
let yearsOld        = 27

switch (nameOfPerson, yearsOld) {
    case ("Pavel",5)        : print("Hello, little!")
    case (_,10)             : print("How yong you are!")
    case ("Roma", 10..<20)  : print("Hi Hi Hi")
    case ("Pavel", 20..<30) : print("Hi, dear!")
default:
    break
}


print("--------------------------")
print("##########################")
print("--------- Task 3 ---------")

let studentFIO : (lastName:String, firstName:String, otchestvo:String) = ("Зетров", "Сергей", "Михайлович")

studentFIO.firstName.hasPrefix("С")

switch studentFIO {
    case (_, let nameSt,_)      where nameSt.hasPrefix("А")     || nameSt.hasPrefix("О")     : print("Привет, \(nameSt)")
    case (_,_, let otchestvo)   where otchestvo.hasPrefix("В")  || otchestvo.hasPrefix("В")  : print("Привет, \(studentFIO.firstName) \(otchestvo)")
    case (let familia,_,_)      where familia.hasPrefix("Е")    || familia.hasPrefix("З")    : print("Привет, \(familia)")
default:
    print("Привет \(studentFIO.lastName) \(studentFIO.firstName) \(studentFIO.otchestvo)")
}
print("--------------------------")
print("##########################")
print("--------- Task 4 ---------")

let fire : (x:String, y:Int) = ("Б", 4)
var odnoTrubnik     = (0,0,0,0)
var dvuTrubnik1     = (0,1)
var dvuTrubnik2     = (1,0)
var dvuTrubnik3     = (0,0)
var treTrubnik1     = (0,1,1)
var treTrubnik2     = (1,0,1)
var chetyreTrubnik  = (1,0,0,1)

switch fire {
    case ("Ж", 2): print("Убил однотрубник 1"); odnoTrubnik.0+=1
    case ("И", 6): print("Убил однотрубник 2"); odnoTrubnik.1+=1
    case ("А", 6): print("Убил однотрубник 3"); odnoTrubnik.2+=1
    case ("Г", 8): print("Убил однотрубник 4"); odnoTrubnik.3+=1

//Двухтрубник 1
    
    case ("Ж", 5) where dvuTrubnik1.1<=0:
        print("Ранил двутрубник 1") ; dvuTrubnik1.0+=1
    case ("Ж", 5) where dvuTrubnik1.1>0:
        print("Убил двутрубник 1")  ; dvuTrubnik1.0+=1
    case ("Ж", 6) where dvuTrubnik1.0<=0:
        print("Ранил двутрубник 1") ; dvuTrubnik1.1+=1
    case ("Ж", 6) where dvuTrubnik1.0>0:
        print("Убил двутрубник 1")  ; dvuTrubnik1.1+=1

//Двухтрубник 2
    
    case ("Б", 8) where dvuTrubnik2.1<=0:
        print("Ранил двутрубник 2") ; dvuTrubnik2.0+=1
    case ("Б", 8) where dvuTrubnik2.1>0:
        print("Убит двутрубник 2")  ; dvuTrubnik2.0+=1
    case ("Б", 9) where dvuTrubnik2.0<=0:
        print("Ранил двутрубник 2") ; dvuTrubnik2.1+=1
    case ("Б", 9) where dvuTrubnik2.0>0:
        print("Убит двутрубник 2")  ; dvuTrubnik2.1+=1

//Двухтрубник 3
    
    case ("И", 3) where dvuTrubnik3.1<=0:
        print("Ранил двутрубник 3") ; dvuTrubnik3.0+=1
    case ("И", 3) where dvuTrubnik3.1>0:
        print("Убит двутрубник 3")  ; dvuTrubnik3.0+=1
    case ("И", 4) where dvuTrubnik3.0<=0:
        print("Ранил двутрубник 3") ; dvuTrubnik3.1+=1
    case ("И", 4) where dvuTrubnik3.0>0:
        print("Убит двутрубник 3")  ; dvuTrubnik3.1+=1
    
//Трехтрубние 1
    
    case ("И", 9) where treTrubnik1.1<=0    ||  treTrubnik1.2<=0:
        print("Ранил трехтрубник 1"); treTrubnik1.0+=1
    case ("И", 9) where treTrubnik1.1>0     &&  treTrubnik1.2>0:
        print("Убит трехтрубник 1") ; treTrubnik1.0+=1
    case ("И", 9) where treTrubnik1.1>0     ||  treTrubnik1.2>0:
        print("Ранил трехтрубник 1"); treTrubnik1.0+=1
    
    case ("З", 9) where treTrubnik1.0<=0    ||  treTrubnik1.2<=0:
        print("Ранил трехтрубник 1"); treTrubnik1.1+=1
    case ("З", 9) where treTrubnik1.0>0     &&  treTrubnik1.2>0:
        print("Убит трехтрубник 1") ; treTrubnik1.1+=1
    case ("З", 9) where treTrubnik1.0>0     ||  treTrubnik1.2>0:
        print("Ранил трехтрубник 1"); treTrubnik1.1+=1
    
    case ("Ж", 9) where treTrubnik1.1<=0    ||  treTrubnik1.0<=0:
        print("Ранил трехтрубник 1"); treTrubnik1.2+=1
    case ("Ж", 9) where treTrubnik1.1>0     &&  treTrubnik1.0>0:
        print("Убит трехтрубник 1") ; treTrubnik1.2+=1
    case ("Ж", 9) where treTrubnik1.1>0     ||  treTrubnik1.0>0:
        print("Ранил трехтрубник 1"); treTrubnik1.2+=1
    
//Трехтрубник 2
    
    case ("Г", 2) where treTrubnik2.1<=0    ||  treTrubnik2.2<=0:
        print("Ранил трехтрубник 2"); treTrubnik2.0+=1
    case ("Г", 2) where treTrubnik2.1>0     &&  treTrubnik2.2>0:
        print("Убит трехтрубник 2") ; treTrubnik2.0+=1
    case ("Г", 2) where treTrubnik2.1>0     ||  treTrubnik2.2>0:
        print("Ранил трехтрубник 2"); treTrubnik2.0+=1
    
    case ("Г", 3) where treTrubnik2.0<=0    ||  treTrubnik2.2<=0:
        print("Ранил трехтрубник 2"); treTrubnik1.1+=1
    case ("Г", 3) where treTrubnik2.0>0     &&  treTrubnik2.2>0:
        print("Убит трехтрубник 2") ; treTrubnik2.1+=1
    case ("Г", 3) where treTrubnik2.0>0     ||  treTrubnik2.2>0:
        print("Ранил трехтрубник 2"); treTrubnik2.1+=1
    
    case ("Г", 4) where treTrubnik2.1<=0    ||  treTrubnik2.0<=0:
        print("Ранил трехтрубник 2"); treTrubnik2.2+=1
    case ("Г", 4) where treTrubnik2.1>0     &&  treTrubnik2.0>0:
        print("Убит трехтрубник 2") ; treTrubnik2.2+=1
    case ("Г", 4) where treTrubnik2.1>0     ||  treTrubnik2.0>0:
        print("Ранил трехтрубник 2"); treTrubnik2.2+=1
    
//Четырёхтрубник
    
case ("Б", 2) where chetyreTrubnik.1<=0||chetyreTrubnik.2<=0 || chetyreTrubnik.3<=0:
    print("Ранил четырехтрубник"); chetyreTrubnik.0+=1
case ("Б", 2) where chetyreTrubnik.1>0 && chetyreTrubnik.2>0 && chetyreTrubnik.3>0:
    print("Убит четырехтрубник") ; chetyreTrubnik.0+=1
case ("Б", 2) where chetyreTrubnik.1>0 || chetyreTrubnik.2>0 || chetyreTrubnik.3>0:
    print("Ранил четырёхтрубник"); chetyreTrubnik.0+=1
    
case ("Б", 3) where chetyreTrubnik.0<=0||chetyreTrubnik.2<=0 || chetyreTrubnik.3<=0:
    print("Ранил четырехтрубник"); chetyreTrubnik.1+=1
case ("Б", 3) where chetyreTrubnik.0>0 && chetyreTrubnik.2>0 && chetyreTrubnik.3>0:
    print("Убит четырехтрубник") ; chetyreTrubnik.1+=1
case ("Б", 3) where chetyreTrubnik.0>0 || chetyreTrubnik.2>0 || chetyreTrubnik.3>0:
    print("Ранил четырёхтрубник"); chetyreTrubnik.1+=1
    
case ("Б", 4) where chetyreTrubnik.0<=0||chetyreTrubnik.1<=0 || chetyreTrubnik.3<=0:
    print("Ранил четырехтрубник"); chetyreTrubnik.2+=1
case ("Б", 4) where chetyreTrubnik.0>0 && chetyreTrubnik.1>0 && chetyreTrubnik.3>0:
    print("Убит четырехтрубник") ; chetyreTrubnik.2+=1
case ("Б", 4) where chetyreTrubnik.0>0 || chetyreTrubnik.1>0 || chetyreTrubnik.3>0:
    print("Ранил четырёхтрубник"); chetyreTrubnik.2+=1
    
case ("Б", 5) where chetyreTrubnik.0<=0||chetyreTrubnik.1<=0 || chetyreTrubnik.2<=0:
    print("Ранил четырехтрубник"); chetyreTrubnik.3+=1
case ("Б", 5) where chetyreTrubnik.0>0 && chetyreTrubnik.1>0 && chetyreTrubnik.2>0:
    print("Убит четырехтрубник") ; chetyreTrubnik.3+=1
case ("Б", 5) where chetyreTrubnik.0>0 || chetyreTrubnik.1>0 || chetyreTrubnik.2>0:
    print("Ранил четырёхтрубник"); chetyreTrubnik.3+=1
    
default:
    print("Мимо")
}


print("--------------------------")
print("##########################")




