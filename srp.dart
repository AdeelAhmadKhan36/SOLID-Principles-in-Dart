//Here we will Implement Single Resposnibility Principle.
void main() {
  User user = User('Adeel Ahmad');
  UserRepo userdata = UserRepo();
  EmailService emailService = EmailService();

  userdata.save(User);
  emailService.sentmail(User);
}

//Now we will implement single desidn principle
class User {
  String name;
  User(this.name);
}

class UserRepo {
  void save(User) {
    print("Save user data");
  }
}

class EmailService {
  void sentmail(User) {
    print("Sent email");
  }
}
