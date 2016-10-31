var horseNames = ["Luke I Am Your Father", "Also Starring Samuel L. Jackson", "J.J. Abrams Next Reboot", "Harambe Was An Inside Job"];
var colors = ["Mahogany", "Fuzzy Wuzzy Brown", "Chestnut", "Red Orange"];

horseNames.push("Whiskey On The Rocks");
colors.push("Eggplant");

console.log(horseNames);
console.log(colors);

var listOfHorses = {
  
};

for (i = 0; i < horseNames.length; i+=1) {
  listOfHorses[i] = {name: horseNames[i], color: colors[i] };
}

console.log(listOfHorses)