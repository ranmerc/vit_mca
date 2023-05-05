let fs = require("fs/promises");

const getFiles = async (source) =>
  (await fs.readdir(source, { withFileTypes: true }))
    .filter((dirent) => dirent.isFile())
    .map((dirent) => dirent.name);

const mapFunction = (content) => {
  const mapArray = [];
  const words = content.split(/[(\r\n)\s]/g).filter((s) => s.length);

  words.forEach((word) => {
    mapArray.push([word.toLowerCase(), 1]);
  });

  return mapArray;
};

const sortFunction = (map) => {
  return map.flat().sort((a, b) => (a[0][0] <= b[0][0] ? -1 : 1));
};

const groupFunction = (map) => {
  const groupedMap = new Map();

  map.forEach((word) => {
    if (!groupedMap.has(word[0])) {
      groupedMap.set(word[0], [1]);
    } else {
      groupedMap.set(word[0], groupedMap.get(word[0]).concat(1));
    }
  });

  return groupedMap;
};

const reduceFunction = (map) => {
  map.forEach((value, key) => {
    map.set(
      key,
      value.reduce((a, b) => a + b, 0)
    );
  });

  return map;
};

async function main() {
  const filesInDirectory = await getFiles("docs");

  const contentInFiles = await Promise.all(
    filesInDirectory.map((file) => {
      return fs.readFile(`docs/${file}`, {
        encoding: "utf-8",
      });
    })
  );

  const wordsMap = await Promise.all(
    contentInFiles.map(async (content) => {
      return mapFunction(content);
    })
  );

  console.log("\nAfter Map");
  console.log(wordsMap);

  const sortedMap = sortFunction(wordsMap);

  console.log("\nAfter Sorting");
  console.log(sortedMap);

  const groupedMap = groupFunction(sortedMap);

  console.log("\nAfter Grouping");
  console.log(groupedMap);

  const reducedMap = reduceFunction(groupedMap);

  console.log("\nAfter Reducing");
  console.log(reducedMap);
}

main();
