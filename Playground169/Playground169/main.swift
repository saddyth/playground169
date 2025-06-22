import Foundation

// Task 1
// Проверка возраста
//Напишите программу, которая запрашивает возраст пользователя и выводит:
//"Вы совершеннолетний", если возраст ≥ 18.
//"Вы несовершеннолетний", если возраст < 18.

print("Задание 1.1: Введите возраст")
let age = Int(readLine()!)

if age! >= 18 {
    print("Вы совершеннолетний")
} else {
    print("Вы несовершеннолетний")
}

//Task 2
//Проверка четности числа
//Напишите программу, которая проверяет, является ли число четным или нечетным.
print("Задание 1.2: Введите число")
let num = Int(readLine()!)
if num! % 2 == 0 {
    print("Число четное")
} else {
    print("Число нечетное")
}
// Task3
//Проверка положительного/отрицательного числа
//Напишите программу, которая проверяет, является ли число: Положительным.Отрицательным.Равным нулю.
print("Задание 1.3: Введите число")
let number = Int(readLine()!)

switch number! {
case ..<0:
    print("Число отрицательное")
case 1...:
    print("Число положительное")
case 0:
    print("Число равно 0")
default:
    print("Введите число")
}
//2 вариант
if number! > 0 {
    print("Число положительное")
} else if number! < 0 {
    print("Число отрицательное")
} else{
    print("Число равно 0")
}

// Task 4
//Определение времени года
//Напишите программу, которая принимает номер месяца (1–12) и определяет время года:
//Зима: декабрь, январь, февраль.
//Весна: март, апрель, май.
//Лето: июнь, июль, август.
//Осень: сентябрь, октябрь, ноябрь.
print("Задание 1.4: Введите месяц")
let month = Int(readLine()!)

switch month! {
case 12,1,2:
    print("Зима")
case 3...5:
    print("Весна")
case 6...8:
    print("Лето")
case 9...11:
    print("Осень")
default:
    print("Введите время года")
}


//Task 5
//Оценка по баллам
//Напишите программу, которая переводит баллы (0–100) в оценку:
//90–100: "Отлично".
//70–89: "Хорошо".
//50–69: "Удовлетворительно".
//0–49: "Неудовлетворительно".
print("Задание 1.5: Введите оценку")
let grade = Int(readLine()!)

switch grade! {
case 0...49:
    print("Неудовлетворительно")
case 50...69:
    print("Удовлетворительно")
case 70...89:
    print("Хорошо")
case 90...100:
    print("Отлично")
default:
    print("Введите оценку")
}


// Задачи 2 уровня

// Task 1
//Калькулятор
//Напишите программу, которая:
//Запрашивает два числа.
//Запрашивает действие (+, -, *, /).
//Выводит результат вычисления.
//Обработайте случай деления на ноль.
print("Задание 2.1: Введите 2 числа и действие")
let num1 = Int(readLine()!)
let num2 = Int(readLine()!)
var result = Int()

let action = String(readLine()!)

switch action {
case "+":
    result = num1! + num2!
case "-":
    result = num1! - num2!
case "*":
    result = num1! * num2!
case "/":
    if num2! != 0{
        result = num1! / num2!
    } else{
        print("Делить на 0 нельзя")
    }
default:
    "Выберите действие"
}
print(result)

// Task 2
//Проверка пароля
//Напишите программу, которая проверяет пароль на соответствие следующим правилам:
//Длина ≥ 8 символов.
//Содержит хотя бы одну цифру.
//Содержит хотя бы одну букву.
//Если пароль соответствует всем условиям, выведите "Пароль надежный". Иначе — "Пароль слабый".
print("Задание 2.2: Введите пароль")
let passwd = readLine()
let range = NSRange(location: 0, length: passwd!.utf16.count)
let patternRegex = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])"  //не сама составляла
let regex = try! NSRegularExpression(pattern: patternRegex)
regex.firstMatch(in: passwd!, range: range)

if passwd!.count >= 8 && regex.firstMatch(in: passwd!, range: range) != nil {
    print("Пароль надежный")
} else{
    print("Пароль ненадежный")
}

//Task 3
//Напишите программу, которая принимает длины трех сторон треугольника и определяет его тип:
//Равносторонний: все стороны равны.
//Равнобедренный: две стороны равны.
//Разносторонний: все стороны разные.
//Проверьте, что треугольник существует (сумма любых двух сторон должна быть больше третьей).
print("Задание 2.3: Введите 3 стороны треугольника")
let side1 = Int(readLine()!)
let side2 = Int(readLine()!)
let side3 = Int(readLine()!)

if side1! + side2! < side3! || side1! + side3! < side2! || side2! + side3! < side1!{
    print("Треугольника не существует")
} else{
    if side1! == side2! && side1! == side3! && side2! == side3!{
        print("Треугольник равносторонний")
    } else if side1! == side2! || side1! == side3! || side2! == side3!{
        print("Треугольник равнобедренный")
    } else if side1! != side2! && side1! != side3! && side2! != side3!{
        print("Треугольник разносторонний")
    }
}


//Task 4
//Светофор
//Напишите программу, которая моделирует работу светофора:
//Если цвет "красный", выведите "Стой".
//Если цвет "желтый", выведите "Готовьтесь".
//Если цвет "зеленый", выведите "Идите".
//Обработайте неверный ввод.
print("Задание 2.4: Введите цвет светофора")
let color = String(readLine()!)

switch color {
case "Красный":
    print("Стой")
case "Желтый":
    print("Готовьтесь")
case "Зеленый":
    print("Идите")
default:
    print("Введите цвет светофора")
}

//Task 5
//Проверка дня недели
//
//Напишите программу, которая принимает номер дня недели (1–7) и выводит:
//Название дня.
//Сообщение "Рабочий день", если это будни.
//Сообщение "Выходной день", если это выходной.
print("Задание 2.5: Введите номер дня недели")
let weekNum = Int(readLine()!)

switch weekNum{
case 1:
    print("Понедельник")
    print("Рабочий день")
case 2:
    print("Вторник")
    print("Рабочий день")
case 3:
    print("Среда")
    print("Рабочий день")
case 4:
    print("Четверг")
    print("Рабочий день")
case 5:
    print("Пятница")
    print("Рабочий день")
case 6:
    print("Суббота")
    print("Выходной день")
case 7:
    print("Воскресенье")
    print("Выходной день")
default:
    print("Введи номер дня")
}



//Задачи 3 уровня
//Task 1
//Напишите программу, которая классифицирует число как:
//Положительное/отрицательное.
//Четное/нечетное.
//Простое/составное.
//Например, для числа 7 результат должен быть: "Положительное, нечетное, простое".

print("Задание 3.1: Введите число")

let numberToCheck = Int(readLine()!)


if numberToCheck! >= 0 {
    if numberToCheck! % 2 == 0 {
        
        for i in 2 ..< numberToCheck! {
            if numberToCheck! % i == 0 {
                print("Число положительное, четное, составное ")
                break
            }
            else{
                print("Число положительное, четное, простое")
            }
        }
    }
    else {
        for i in 2 ..< numberToCheck! {
            if numberToCheck! % i == 0 {
                print("Число положительное, нечетное, составное ")
                break
            }
            else{
                print("Число положительное, нечетное, простое")
                break
            }
        }
    }
}
else {
    if numberToCheck! % 2 == 0 {
        for i in numberToCheck! + 1 ..< -1 {
            if numberToCheck! % i == 0 {
                print("Число отрицательное, четное, составное ")
                break
            }
            else{
                print("Число отрицательное, четное, простое")
                break
            }
        }
    }
    else {
        for i in numberToCheck! + 1 ..< -1 {
            if numberToCheck! % i == 0 {
                print("Число отрицательное, нечетное, составное ")
                break
            }
            else{
                print("Число отрицательное, нечетное, простое")
                break
            }
        }
    }
}


//Task 2
//Игра "Угадай число"
//Напишите программу, которая:
//Генерирует случайное число от 1 до 10.
//Запрашивает у пользователя попытки угадать число.
//После каждой попытки сообщает:
//"Меньше", если число меньше загаданного.
//"Больше", если число больше загаданного.
//"Вы угадали!", если число угадано.

print("Задание 3.2: Введите число")

var randomNumber = Int.random(in: 1..<11)
var readNumber = Int(readLine()!)

while readNumber! != randomNumber{
    if readNumber! < randomNumber {
        print("Ваше число меньше, попробуйте еще раз")
        readNumber = Int(readLine()!)
    }
    else if readNumber! > randomNumber  {
        print("Ваше число больше, попробуйте еще раз")
        readNumber = Int(readLine()!)
    }
}
print("Вы угадали")


//Task 3
//Кассовый аппарат
//Напишите программу, которая:
//Запрашивает сумму покупки.
//Запрашивает сумму, которую дал клиент.
//Вычисляет сдачу.
//Если денег недостаточно, выводит сообщение об ошибке.

print("Задание 3.3: Введите сумму покупки")
let purchaseSum = Int(readLine()!)
print("Введите вашу сумму")
let paySum = Int(readLine()!)

if purchaseSum! <= paySum! {
    print("Сдача \(paySum! - purchaseSum!)")
} else {
    print("Недостаточно средств")
}

// Task 4
//Определение знака зодиака
//Напишите программу, которая принимает день и месяц рождения и определяет знак зодиака:
//Овен: 21 марта – 20 апреля.
//Телец: 21 апреля – 21 мая.
//Близнецы: 22 мая – 21 июня.
//... и так далее для всех 12 знаков.
print("Задание 3.4: Введите день рождения (число) и месяц рождения (текст) ")
var (dayOfBirth, monthOfBirth) = (Int(readLine()!), String(readLine()!))
switch monthOfBirth {
case "январь":
    switch dayOfBirth!{
    case 1...19:
        print("Козерог")
    case 20...31:
        print("Водолей")
    default:
        print("Введите день")
    }
case "февраль":
    switch dayOfBirth!{
    case 1...19:
        print("Водолей")
    case 20...29:
        print("Рыбы")
    default:
        print("Введите день")
    }
case "март":
    switch dayOfBirth!{
    case 1...20:
        print("Рыбы")
    case 21...31:
        print("Овен")
    default:
        print("Введите день")
    }
case "апрель":
    switch dayOfBirth!{
    case 1...20:
        print("Овен")
    case 21...30:
        print("Телец")
    default:
        print("Введите день")
    }
case "май":
    switch dayOfBirth!{
    case 1...20:
        print("Телец")
    case 21...31:
        print("Близнецы")
    default:
        print("Введите день")
    }
case "июнь":
    switch dayOfBirth!{
    case 1...20:
        print("Близнецы")
    case 21...30:
        print("Рак")
    default:
        print("Введите день")
    }
case "июль":
    switch dayOfBirth!{
    case 1...22:
        print("Рак")
    case 23...31:
        print("Лев")
    default:
        print("Введите день")
    }
case "август":
    switch dayOfBirth!{
    case 1...22:
        print("Лев")
    case 23...31:
        print("Дева")
    default:
        print("Введите день")
    }
case "сентябрь":
    switch dayOfBirth!{
    case 1...22:
        print("Дева")
    case 23...30:
        print("Весы")
    default:
        print("Введите день")
    }
case "октябрь":
    switch dayOfBirth!{
    case 1...22:
        print("Весы")
    case 23...31:
        print("Скорпион")
    default:
        print("Введите день")
    }
case "ноябрь":
    switch dayOfBirth!{
    case 1...22:
        print("Скорпион")
    case 23...30:
        print("Стрелец")
    default:
        print("Введите день")
    }
case "декабрь":
    switch dayOfBirth!{
    case 1...21:
        print("Стрелец")
    case 22...31:
        print("Козерог")
    default:
        print("Введите день")
    }
default:
    print("Введите месяц")
}

//Task 5
//Определение високосного года
//Напишите программу, которая проверяет, является ли год високосным:
//Год високосный, если он делится на 4, но не делится на 100.
//Исключение: год високосный, если он делится на 400.
print("Задание 3.5: Введите год")
let year = Int(readLine()!)

if (year! % 4 == 0 && year! % 100 != 0) || year! % 400 == 0 {
    print("Год високосный")
} else {
    print("Год не високосный")
}


//Доп задачи
// Task 1
//Классификация треугольника по углам
//Напишите программу, которая принимает три угла треугольника и определяет его тип:
//Остроугольный: все углы < 90°.
//Прямоугольный: один угол = 90°.
//Тупоугольный: один угол > 90°.
//Проверьте, что сумма углов равна 180°.
print("Задание 4.1: Введите 3 угла треугольника")
let angle1 = Int(readLine()!)
let angle2 = Int(readLine()!)
let angle3 = Int(readLine()!)

if (angle1! + angle2! + angle3!) == 180 {
    if angle1! < 90 && angle2! < 90 && angle3! < 90 {
        print("Треугольник остроугольный")
    } else if angle1! == 90 || angle2! == 90 || angle3! == 90 {
        print("Тряугольник прямоугольный")
    } else if angle1! > 90 || angle2! > 90 || angle3! > 90{
        print("Тряугольник тупой")
    }
} else {
    print("Такого треугольника не существует")
}

//Task 2
//Определение дня недели по дате
//Напишите программу, которая принимает дату (год, месяц, день) и определяет день недели.
//Можно использовать готовые методы для работы с датами.
print("Задание 4.2: Введите дату в форме дд.мм.гггг")
let weekDay = String(readLine()!)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd.MM.yy"
let normalDate = dateFormatter.date(from: weekDay)

print(normalDate!.formatted(Date.FormatStyle().weekday(.wide)))

// Task 3
//Проверка палиндрома
//Напишите программу, которая проверяет, является ли строка палиндромом:
//Палиндром — это строка, которая читается одинаково слева направо и справа налево.
//Например, "radar" — палиндром.
print("Задание 4.3: Введите слово для проверки на палиндром")
let word = String(readLine()!)
if word == String(word.reversed()) {
    print("Это палиндром")
} else {
    print("Это не палиндром")
}

//Task 4
//Определение максимального числ
//Напишите программу, которая принимает три числа и выводит максимальное из них.
//Не используйте готовый метод .max().
print("Задание 4.2: Введите 3 числа")
let number1 = Int(readLine()!)
let number2 = Int(readLine()!)
let number3 = Int(readLine()!)

if number1! > number2! && number1! > number3! {
    print("Самое большое число \(number1!)")
} else if number2! > number1! && number2! > number3! {
    print("Самое большое число \(number2!)")
} else if number3! > number1! && number3! > number2! {
    print("Самое большое число \(number3!)")
} else{
    print("Какие-то числа равны")
}

// Task 5
//Напишите программу, которая конвертирует сумму из одной валюты в другую:
//Запрашивает сумму.
//Запрашивает исходную валюту (например, USD, EUR).
//Запрашивает целевую валюту.
//Выводит результат конвертации.
print("Задание 4.2: Введите вашу сумму, оригинальную валюту и валюту для перевода")
let money = Double(readLine()!)
let origCurrncy = String(readLine()!)
let convertCurrency = String(readLine()!)
let exchangeRates: [String: Double] = [ "USD": 1.0, "EUR": 0.87, "RUB": 78.0, "JPY": 145.92 ]

let usdAmount = money! / exchangeRates[origCurrncy]!
let converted = usdAmount * exchangeRates[convertCurrency]!
print(converted)
