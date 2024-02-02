// models/ListsModel.js
import connection from '../config/database.js';

const UsersModel = {
  getAllUsers: () => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM usuarios', (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
  addUser: (email, contraseña) => {
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO usuarios (email, contraseña) VALUES (?, ?)', [email, contraseña], (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
};

export default UsersModel;