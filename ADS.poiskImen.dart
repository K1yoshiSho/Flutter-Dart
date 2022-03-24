void main() {
  search("you");
}

personIsSeller(String name) {
  return name[name.length - 1] == "m";
}

search(String name) {
  var graph = {};
  graph["you"] = ["alice", "bob", "claire"];
  graph["bob"] = ["anuj", "peggy"];
  graph["alice"] = ["peggy"];
  graph["claire"] = ["thom", "jonny"];
  graph["anuj"] = [];
  graph["peggy"] = [];
  graph["thom"] = [];
  graph["jonny"] = [];
  var searchQueue = [];
  searchQueue = searchQueue + (graph[name]);
  var searched = [];
  var checkLength = searchQueue.length;
  while (checkLength > 0) {
    var person = searchQueue.removeAt(0);
    var indexPerson = searched.indexOf(person);
    if (indexPerson == -1) {
      if (personIsSeller(person)) {
        print(person + " is a mango seller!");
      }
      searchQueue += (graph[person]);
      searched.add(person);
    }
  }
  return false;
}
