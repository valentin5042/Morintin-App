// config/dbConfig.js
import mysql from 'mysql2';

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'db_morintin',
});

connection.connect(err => {
  if (err) {
    console.error('Error al conectar a la base de datos: ', err);
    return;
  }
  console.log('Conexión a la base de datos establecida');
});

process.on('SIGINT', () => {
  connection.end();
  process.exit();
});

export default connection;
