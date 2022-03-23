void main() {
  Map<String, bool> checkVote = Map();
 
  checkVoter(checkVote, "tom"); // let them vote!
  checkVoter(checkVote, "mike"); // let them vote!
  checkVoter(checkVote, "mike"); // kick them out!
}

checkVoter(Map<String, bool> checkVote, String name) {
        if (checkVote.containsKey(name)) {
            print("kick them out!");
        } else {
            checkVote[name] = true;
            print("let them vote!");
        }
    }
