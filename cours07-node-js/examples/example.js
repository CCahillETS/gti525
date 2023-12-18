const fs = require("fs");

function printLines(pathToFile, startLine, lastLine) {
  const readStream = fs.createReadStream(pathToFile, { encoding: "utf8" });

  // Résultat à afficher
  let ret = "";
  let currentLine = 1;

  function withinRange() {
    if (lastLine && currentLine >= startLine && currentLine <= lastLine) {
      return true;
    }
    return currentLine === startLine;
  }

  readStream.on("data", function (blob) {
    // Complétez le code...
    for (const c of blob.toString()) {
      if (withinRange()) {
        ret += c;
      }
      if (c === "\n") {
        currentLine++;
      }
    }
  });

  readStream.on("end", function () {
    console.log(ret);
  });

  readStream.on("error", function () {
    console.log("Erreur survenue lors de la lecture du fichier: " + pathToFile);
  });
}
