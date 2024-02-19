// userModel.js
import connection from '../config/database.js';
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';

const UsersModel = {
  addUser: async (nombre, email, password, token) => {
    const hashedPassword = await bcrypt.hash(password, 10);
    const tokenToAdd = token || jwt.sign({ email }, 'mi_secreto', { expiresIn: '1h' }); // Usa el token proporcionado o genera uno nuevo

    return new Promise((resolve, reject) => {
      connection.query(
        'INSERT INTO usuarios (nombre, email, password, token) VALUES (?, ?, ?, ?)',
        [nombre, email, hashedPassword, tokenToAdd],
        async (err, results) => {
          if (err) {
            reject(err);
          } else {
            resolve(results);
          }
        }
      );
    });
  },
  getUserByCredentials: async (email, password) => {
    return new Promise((resolve, reject) => {
      connection.query(
        'SELECT * FROM usuarios WHERE email = ?',
        [email],
        async (err, results) => {
          if (err) {
            reject(err);
          } else {
            console.log('Resultados de la consulta:', results); // Agregar registro de depuración
            if (results.length === 0) {
              resolve(null);
            } else {
              const usuario = results[0];
              const passwordMatch = await bcrypt.compare(password, usuario.password);
              console.log('¿Coincide la contraseña?', passwordMatch); // Agregar registro de depuración
              if (passwordMatch) {
                // Si el usuario tiene un token almacenado, eliminarlo
                if (usuario.token) {
                  connection.query(
                    'UPDATE usuarios SET token = NULL WHERE email = ?',
                    [email],
                    async (updateErr, updateResults) => {
                      if (updateErr) {
                        reject(updateErr);
                      } else {
                        console.log('Token eliminado correctamente');
                      }
                    }
                  );
                }
                // Generar un nuevo token y agregarlo a la base de datos
                const token = jwt.sign({ email }, 'secretKey', { expiresIn: '1h' });
                connection.query(
                  'UPDATE usuarios SET token = ? WHERE email = ?',
                  [token, email],
                  async (updateErr, updateResults) => {
                    if (updateErr) {
                      reject(updateErr);
                    } else {
                      console.log('Nuevo token', token);
                      // Incluimos el nombre de usuario en el objeto resuelto
                      usuario.token = token;
                      resolve(usuario);
                    }
                  }
                );
              } else {
                resolve(null);
              }
            }
          }
        }
      );
    });
  },
  getUserByEmail: async function(email) {
    return new Promise((resolve, reject) => {
      connection.query(
        'SELECT * FROM usuarios WHERE email = ?',
        [email],
        (err, results) => {
          if (err) {
            reject(err);
          } else {
            resolve(results[0]);
          }
        }
      );
    });
  }
};

export default UsersModel;
