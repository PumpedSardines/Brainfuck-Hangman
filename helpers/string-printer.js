/**
 * Generates valid brainfuck code that prints a given string
 * @param {string} text 
 * @returns Brainfuck code
 */
function generatePrintCode(text) {
  const numbers = [...Buffer.from(text, "ascii")];

  let currentVal = 0;
  let commands = "";

  for(const num of numbers) {
    const move = num - currentVal;
    if(move < 0) {
      currentVal = currentVal + move;
      commands += String("-").repeat(Math.abs(move)) + ".";
    } else {
      currentVal = currentVal + move;
      commands += String("+").repeat(move) + ".";
    }
  }

  return commands;
}

const [nodePath, filePath, ...text] = process.argv;

if(text.length === 0) {
  throw new Error("No text provided");
} else {
  console.log(generatePrintCode(text.join(" ") + "\n"));
}
