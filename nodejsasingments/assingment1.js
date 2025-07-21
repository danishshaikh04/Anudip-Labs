// Question 2 : Write a program to merge the contents of two files, “file1.txt” and “file2.txt”, into a new file named “merged.txt”.

const fs = require('fs');

const data1 = fs.readFileSync('file1.txt', 'utf8');
const data2 = fs.readFileSync('file2.txt', 'utf8');

fs.writeFileSync('merged.txt', data1 + '\n' + data2);

console.log('Files merged!');