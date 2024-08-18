// class MySQLDatabase {
//   void save(String data) {
//     print("Saving $data to MySQL database");
//   }
// }

// class Application {
//   MySQLDatabase database;
//   Application(this.database);

//   void saveData(String data) {
//     database.save(data);
//   }
// }
//AFter Dependency Inversion Principle
abstract class Database {
  void save(String data);
}

class MySQLDatabase extends Database {
  @override
  void save(String data) {
    print("Saving $data to MySQL database");
  }
}

class Application {
  Database database;
  Application(this.database);

  void saveData(String data) {
    database.save(data);
  }
}

void main() {
  Database mySQL = MySQLDatabase();
  Application app = Application(mySQL);
  app.saveData("Some data");
}
