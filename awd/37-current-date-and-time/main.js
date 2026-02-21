// Create a new Date object
const now = new Date();

// Get individual date and time components
const year = now.getFullYear();
const month = now.getMonth() + 1; // Months are 0-indexed
const day = now.getDate();
const hours = now.getHours();
const minutes = now.getMinutes();
const seconds = now.getSeconds();

// Format the date and time
const formattedDate = `${year}-${month.toString().padStart(2, "0")}-${day
  .toString()
  .padStart(2, "0")}`;
const formattedTime = `${hours.toString().padStart(2, "0")}:${minutes
  .toString()
  .padStart(2, "0")}:${seconds.toString().padStart(2, "0")}`;

// Display the result
console.log(`Current Date: ${formattedDate}`);
console.log(`Current Time: ${formattedTime}`);
