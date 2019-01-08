import UIKit

func printButtlesSong(howManyButtles : Int){
    let str = "99 Bottles of Beer"
    print(str)
    
    let maxNumber = howManyButtles
    var oppositeNumber = 0
    let beginSentense = " bootles of beer on the wall, "
    let midSentense = " bottles of beer.\nTake one down and pass it around, "
    let endSentense = " bottles of beer on the wall."
    
    for bottleNum in 1...howManyButtles{
        oppositeNumber = maxNumber - bottleNum
        print(String(oppositeNumber) + beginSentense + String(oppositeNumber) + midSentense + String(oppositeNumber-1) + endSentense)
    }
}

printButtlesSong(howManyButtles: 3)


