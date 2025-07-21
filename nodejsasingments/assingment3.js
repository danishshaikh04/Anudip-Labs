// Question 1 : Write a program to copy the contents of a file named source.txt to a new file named  destination.txt. Check if the source file exists before copying. 


const fs = require('fs');

// Check if source.txt exists
if (fs.existsSync('source.txt')) {
  // Read content from source.txt
  const data = fs.readFileSync('source.txt', 'utf8');

  // Write content to destination.txt
  fs.writeFileSync('destination.txt', data);

  console.log('File copied successfully!');
} else {
  console.log('source.txt does not exist.');
}