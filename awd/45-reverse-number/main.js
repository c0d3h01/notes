function reverseNumber(num) {
  // Convert the number to a string
  const numString = String(num);
  // Split the string into an array of characters
  const charArray = numString.split("");
  // Reverse the array
  const reversedArray = charArray.reverse();
  // Join the array back into a string
  const reversedString = reversedArray.join("");
  // Convert the reversed string back to a number
  // Handle negative numbers by preserving the sign
  const reversedNum = parseInt(reversedString) * Math.sign(num);
  return reversedNum;
}
