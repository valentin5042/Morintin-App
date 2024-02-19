// controllers/UsersController.js
import UsersModel from '../models/UsersModel.js';
import jwt from 'jsonwebtoken';

const secretKey = 'your_secret_key'; // Clave secreta para firmar el token JWT

const UsersController = {
  getAllUsers: async () => {
    try {
      const users = await UsersModel.getAllUsers();
      return users;
    } catch (error) {
      throw error;
    }
  },
  addUser: async (nombre, email, password) => {
    try {
      const result = await UsersModel.addUser(nombre, email, password);
      return result;
    } catch (error) {
      throw error;
    }
  },
  getUserByCredentials: async (nombre, password) => {
    try {
      const user = await UsersModel.getUserByCredentials(nombre, password);
      console.log('Usuario obtenido:', user); // Agregar registro de depuración
      return user;
    } catch (error) {
      throw error;
    }
  },
  login: async (req, res) => {
    const { email, password } = req.body;
    try {
      // Verificar las credenciales del usuario por correo electrónico
      const user = await UsersModel.getUserByCredentials(email, password);
      if (!user) {
        return res.status(401).json({ error: 'Credenciales inválidas' });
      }
      // Generar un nuevo token JWT
      const token = jwt.sign({ email }, 'mi_secreto', { expiresIn: '1h' });
      // Enviar el token y el nombre de usuario como respuesta
      res.json({ token, nombreUsuario: user.nombre });
    } catch (error) {
      console.error('Error al iniciar sesión:', error);
      res.status(500).json({ error: 'Error interno del servidor' });
    }
  },
  getUserByEmail: async (email) => {
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
  },
  logout: (req, res) => {
    // Eliminar el token del almacenamiento local del cliente
    localStorage.removeItem('token');

    // Responder con un mensaje indicando que la sesión ha sido cerrada exitosamente
    res.json({ message: 'Sesión cerrada exitosamente' });
  }
};

export default UsersController;
