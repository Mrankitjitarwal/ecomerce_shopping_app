import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{

  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  DatabaseHelper.internal();
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'database.db');
    return await openDatabase( path,version: 1, onCreate: _onCreate);
  }
  void _onCreate(Database db, int newVersion) async {
    await db.execute('CREATE TABLE Signup( name TEXT, email varchar,password varchar)');
  }


}