
import Foundation

var string = "Geeks are nerds"
  
print("Before Removing:", string)
  
// Position of the character to remove
var i = string.index(string.startIndex, offsetBy: 4)
var j = string.index(string.startIndex, offsetBy: 1, limitedBy: string.endIndex)
//var range = string.index(string.lastIndex, offsetBy: 4)
//var test = string.index(string.startIndex, offsetBy: 1, limitedBy: 25)
// Removing the character
var removed_String = string.remove(at: j)
//var removed_range = string.remove(at: range)

print("After Removing:", string)
print("Removed Character:", removed_String)

print("After Removing:", string)
//print("Removed Character:", removed_range)
