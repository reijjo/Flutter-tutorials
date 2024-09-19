void main() {
  User userOne = User('luigi', 25);

  print(userOne.username);
  print(userOne.age);
  userOne.login();

  User userTwo = User('Mario', 40);
  print(userTwo.username);

  SuperUser userThree = SuperUser('Yoshi', 20);
  print(userThree.username);
  userThree.publish();
  userThree.login();
}

class User {
  String username;
  int age;

  User(this.username, this.age);

  void login() {
    print('user logged in');
  }
}

class SuperUser extends User {
  SuperUser(String username, int age) : super(username, age);

  void publish() {
    print('publishing update');
  }
}
