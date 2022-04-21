// learning how to do recursions by reversing the string
// Andrew Du-frigstad
// version 1
// since 2022-04-19

// imports
import Foundation

class ReverseString
{
	
  // This is reversing the string elements recursively
	func reverseText(_ text: String, _ location: Int) -> String
	{
		// Base condition to stop the recursion process
		if (location >= 0)
		{
			// Recursive function call
			return String(Array(text)[location]) + 
              self.reverseText(text, location - 1);
		}
		// When no character remaining
		return "";
	}

  // This is handling the request process of reverse string elements
	func reverse(_ text: String) -> String
	{
		// Display given string elements
		print("Before Text : [" + text + "]");
		return self.reverseText(text, text.count - 1);
	}

	static func main()
	{
		let task: ReverseString = ReverseString();
		var text: String = "ABCDE";
		text = task.reverse(text);
		// After reverse	
		print("After Text  : [" + text + "]\n");
		text = task.reverse("654A321");
		// After reverse	
		print("After Text  : [" + text + "]\n");
	}
}
ReverseString.main();