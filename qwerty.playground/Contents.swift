import Foundation
import UIKit


func move(_ p: Int, _ r: Int) -> Int {
    var result = p * 2 + r * 2
    return result
}
move(4, 2)

func greet(_ name: String) -> String {
return "Hello, \(name) how are you doing today"
}
greet("Artem")

func maps(a : Array<Int>) -> Array<Int> {
    var result = [Int]()
    for i in a {
        result.append(i * 2)
    }
    return result
}
maps(a: [1, 2, 3])

func century(_ year: Int) -> Int {
    var result = 0
    if year % 100 == 0 {
        result += year / 100
    } else {
        result += year / 100 + 1
    }
    return result
}
century(1701)

func century1(_ year: Int) -> Int {
    return (year + 99) / 100
}
century1(1765)

func century2(_ year: Int) -> Int {
    let century = year % 100 == 0 ? (year / 100) : (year / 100) + 1
    return century
}

func monkeyCount(_ n: Int) -> [Int] {
var result = [Int]()
    for i in 1...n {
        result.append(i)
    }
    return result
}
monkeyCount(10)

func bmi(_ weight: Int, _ height: Double) -> String {
    var bmi = Double(weight) / (height * height)
    if bmi <= 18.5 {
        return "Underweight"
    } else if bmi <= 25.0 {
        return  "Normal"
    } else if bmi <= 30.0 {
        return "Overweight"
    } else if bmi > 30 {
        return "Obese"
    } else {
        print("error")
    }
    return String(bmi)
}
bmi(105, 1.78)

func findDifference(_ a: [Int], _ b: [Int]) -> Int {
    var result = a.reduce(1, *) - b.reduce(1, *)
    if result < 0 {
        result *= -1
    }
    return result
}
findDifference([4, 2, 3], [6, 3, 4])


func sum_str1(_ a:String, _ b:String) -> String {
    var result = ""
    if let a1 = Int(a) , let b1 = Int(b) {
        result += String(a1 + b1)
    }
    return result
}
sum_str1("3", "5")


func summation(_ n: Int) -> Int {
    var result = 0
    for i in 1...n {
        result += i
    }
    return result
}
summation(8)


func grow(_ arr: [Int]) -> Int {
    var res = 1
    for i in arr {
        res = res * i

    }
    return res
}
grow([1, 2, 3, 4])

func grow2(_ arr: [Int]) -> Int {
    var res = arr.reduce(1, *)
    return res
}
grow2([1, 2, 3, 4])


func subtractSum(_ n: Int) -> String {
    var result = ""
    var number = String(n)
    for char in number {
        if n >= 10, n < 10000 {
            guard let charrr = char.wholeNumberValue else {
                return "error"
            }
        }
    }
    return result
}
subtractSum(109)

func boolToWord(_ bool: Bool) -> String {
    bool == true ? "Yes" : "No"
}
boolToWord(true)

func repeatStr(_ n: Int, _ string: String) -> String {
    var str = ""
    for _ in 0..<n {
        str += "\(string)"
    }
    return str
}
repeatStr(3, "Yes")

var array = [1, 2, 3, 4, 5,]
func getInfo(_ array: [Int]) -> [String]{
    var result = [String]()
    for i in array {
        let count = String(i) + "a"
        result.append(count)
    }
 return result
}
getInfo(array)




//Написать функцию, которая выводит среднее арифметическое значение для входных данных
[1, 3, 5]

func getInfo1(_ array: [Int]) -> Int {
    var result = 0
    for i in array {
        result += i
    }
    result /= array.count

    return result
}
getInfo1([1, 3, 5])

func multipule1(_ number: Int) {
    for i in 1...10 {
        print("\(i) умножить на \(number) = \(i * number) ")
    }
}
multipule1(5)

func multipule(_ number: Int) -> String {
    var result = ""
    for i in 1...10 {
        result.append("\(i) умножить на \(number) = \(i * number)\n")
    }
    result.removeLast()
    return result
}
multipule(5)


func multipule2(_ number: Int) -> String {
    var resStr = ""

    for i in 1...10 {
        if i == 10 {
            resStr += "\(i) * \(number) = \(i * number)"
        } else {
            resStr += "\(i) * \(number) = \(i * number)\n"
        }
    }
    return resStr
}
print(multipule2(5))

func summa(_ number1: Int, _ number2: Int) -> Int {
    var result = 0
    for i in number1...number2 {
        result += i
    }
        return result
}
summa(-2, 4)

func evenOrOdd(_ number:Int) -> String {
    number % 2 == 0 ? "Even" : "Odd"
}
evenOrOdd(10)
func booleanToString(_ b: Bool) -> String {
    var result = ""
    if b == true {
        result += "true"
    } else {
        result += "false"
    }
    return result
}
booleanToString(true)


func quarter(of month: Int) -> Int {
    var numberOfMonth = 0
    switch month {
    case 1...3: numberOfMonth += 1
    case 4...6: numberOfMonth += 2
    case 7...9: numberOfMonth += 3
    case 10...12: numberOfMonth += 4
    default: print("Error")
    }
    return numberOfMonth
}
quarter(of: 2)

func simpleMultiplication(_ num: Int) -> Int {
    var result = 0
    if num % 2 == 0 {
        result = num * 8
    } else {
        result = num * 9
    }
    return result
}
 simpleMultiplication(10)


func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
 var result = h * 3600000 + m * 60000 + s * 1000
    return result
}
past(3, 45, 13)


func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
  var  result = (s1 + s2 + s3) / 3
    var str = ""
    switch result {
    case 0..<60: str += "F"
    case 60..<70: str += "D"
    case 70..<80: str += "C"
    case 80..<90: str += "B"
    case 90...100: str += "A"
    default:
        print("error")
    }
  return str
}
getGrade(100, 30, 75)


func RentalCarCost(_ days: Int) -> Int {
    var sum = 0
    switch days {
    case 3...6: sum += 40 * days - 20
    case 7...: sum += 40 * days - 50
    default: sum += 40 * days
    }
    return sum
}
RentalCarCost(2)

func reverseSeq(n: Int) -> [Int] {
    var result = [Int]()
        for i in 1...n {
            result.append(i)
        }
    return result.reversed()
}
reverseSeq(n: 6)

func formatMoney(_ val:Double) -> String {
var sum = ""
  if val > 0 {
    sum += "$\(val)"
  } else {
    print("error")
  }
  return sum
}
formatMoney(3.1)

func opposite(number: Double) -> Double {
    -number
}
opposite(number: -5)

func sumOfPositives1(_ numbers: [Int] ) -> Int {
    var sum = 0
    for num in numbers {
        if num > 0 {
            sum += num
        } else {
            sum += 0
        }
    }
   return sum
}
sumOfPositives1([3, 5, 9, -5, 6, -9, -3, 7])

func sumOfPositives (_ numbers: [Int] ) -> Int {
    let num = numbers.filter {$0 > 0}
    return num.reduce(0, +)
}
sumOfPositives([3, 5, 9, -5, 6, -9, -3, 7])

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    base % factor == 0 ?  true : false
}
checkForFactor(2, 6)

func squareSum(_ vals: [Int]) -> Int {
    var sum = 0
    for i in vals {
        sum += i * i
    }
    return sum
}
squareSum([2, 3, 4])


func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    a.contains(x) ? true : false
}
check([2, 4, 5, 7], 3)

func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {

    if n % x == 0, n % y == 0 {
        true
    }
    return false
}
isDivisible(100, 20, 4)


func isDivisible1(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    var result = true
    if n % x == 0, n % y == 0 {
        result = true
    } else {
        result = false
    }
    return result
}
isDivisible1(100, 20, 4)


func numberToString(number: Int) -> String {
 String(number)
}
numberToString(number: 456)

func hero(bullets: Int, dragons: Int) -> Bool {
    bullets % dragons == 0 ? true : false
}
hero(bullets: 6, dragons: 4)

func take1(_ arr: [Int], _ n: Int) -> [Int] {
   var result = arr.filter({$0 < n})
    return result
}
take1([1, 2, 4, 6, 7, -8, 10, 13, 15], -3)


func digitize(_ num:Int) -> [Int] {
    var result = String(num).reversed()
    return result.compactMap({Int(String($0))})
}
digitize(123)

func squareOrSquareRoot(_ input: [Int]) -> [Int] {
    var result = [Int]()

    for i in input {
        var qwerty = Double(i).squareRoot()
        if floor(qwerty) == qwerty {
            result.append(Int(qwerty))
        } else {
            result.append(i * i)
        }
    }
    return result
}

squareOrSquareRoot([2, 5, 9, 3, 49, 23, 81])

func stringy(_ size: Int) -> String {
    (1...size).map {$0 % 2 == 0 ? "0" : "1"}.joined()
}
stringy(12)

func fakeBin(digits: String) -> String {
    digits.map {Int(String($0))! < 5 ? "0" : "1"}.joined()
}
fakeBin(digits: "288749")


func flip(_ direction: String, _ a: [Int]) -> [Int] {
    direction == "R" ? a.sorted(by: >) : a.sorted(by: <)
}
flip("R", [1, 4, 5, 3, 5 ])

func take(_ arr: [Int], _ n: Int) -> [Int] {
    Array(arr.prefix(n))
}
take([2, 3, 5, 6, 8, 15], 7)


//используем приведение типов к инту если не можем то по дефоту в 0
func sum_str(_ a:String, _ b:String) -> String {
    String((Int(a) ?? 0) + (Int(b) ?? 0))
}
sum_str("3", "")

func nthEven(_ n: Int) -> Int {
return(n - 1) * 2
}
func doubleInteger(_ num: Int) -> Int {
num * 2
}

func goals(laLigaGoals: Int, copaDelReyGoals: Int, championsLeagueGoals: Int) -> Int {
  return laLigaGoals + copaDelReyGoals + championsLeagueGoals
}
func getVolumeOfCuboid(length: Int, width: Int, height: Int) -> Int {
  return length * width * height
}

func update_light(_ current: String) -> String {
    switch current {
    case "green":
        return "yellow"
    case "yellow":
        return "red"
    case "red":
        return "green"
    default:
        return "Invalid state"
    }
}

func converter(mpg: Int) -> Double {
    let kpl = Double(mpg) * 0.354006189
    return (kpl * 100).rounded() / 100
}

func otherAngle(a: Int, b: Int) -> Int {
return 180 - a - b
}

//MARK: - Бинарный поиск

//Пример 1

func binarySearch(array: [Int], item: Int) -> Int? {
    
    var low = 0
    var high = array.count - 1
    var mid = 0
    var guess = 0
    
    while low <= high {
        mid = (low + high) / 2
        guess = array[mid]
        
        if guess == item {
            return mid
        } else if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return nil
}

let binaryTestArray = [1, 3, 6, 7, 9, 12, 15, 18]
binarySearch(array: binaryTestArray, item: 7)

//MARK: - Сортировка пузырьком - O(n^2)

var numbers = [4, 6, 1, 12, 3, 22, 14, 0, -2]

func bubbleSort(array: inout [Int]) {
    
    for i in 0..<array.count {
        
        let index = array.count - 1 - i
        
        for j in 0..<index {
            
            let number = array[j]
            let nextNumber = array[j + 1]
            
            if number > nextNumber {
                array[j] = nextNumber
                array[j + 1] = number
            }
        }
    }
}

bubbleSort(array: &numbers)

//MARK: - Метод двойного указателя

//Пример 3

//топот
//А роза Азора

func isPalindrom(numberAsString: String) -> Bool {
    let resultString = numberAsString.replacingOccurrences(of: " ", with: "").lowercased()
    let charactersArray = Array(resultString)
    var rightPointer = charactersArray.count - 1
    
    if charactersArray.count == 1 {
        return true
    }
    
    for index in 0..<charactersArray.count {
        if charactersArray[index] != charactersArray[rightPointer] {
            return false
        }
        rightPointer -= 1
    }
    return true
}
isPalindrom(numberAsString: "топот")


//MARK: Скользящее окно

struct MaxSumRange {
    var maxSum = 0
    var start = 0
    var end = 0
}

func slidingWindow(array: [Int]) -> MaxSumRange? {
    
    //инициализируем переменные
    var currSum = 0
    var startIndex = 0
    var maxSumRange: MaxSumRange? = nil
    
    //проходимся по массиву
    for endIndex in 0..<array.count {
        currSum += array[endIndex]
        
        //Если текущая сумма больше максимальной, обновляем границы подмассива и общую сумму
        if maxSumRange == nil || currSum > maxSumRange?.maxSum ?? 0 {
            maxSumRange = MaxSumRange(maxSum: currSum,
                                      start: startIndex,
                                      end: endIndex)
        }
        
        //В какой-то момент может стать так, что сумма станет меньше 0
        //Это означает, что все, что мы сложили ранее имеет отрицательных чисел больше, чем положительных
        //Не имеет смысла прибавлять число, которое даст отрицательную сумму, т.к. получим уменьшенное число/сумму
        
        if currSum < 0 {
            currSum = 0
            startIndex = endIndex + 1
        }
    }
    return maxSumRange
}
