// models/ListsModel.js
import connection from '../config/database.js';

const ListsModel = {
  getAllList: () => {
    return new Promise((resolve, reject) => {
      connection.query('SELECT * FROM detalles_lista', (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
  addProductToList: (listId, productId) => {
    return new Promise((resolve, reject) => {
      connection.query('INSERT INTO detalles_lista (lista_id, producto_id) VALUES (?, ?)', [listId, productId], (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },

  removeProductFromList: (listId, productId) => {
    return new Promise((resolve, reject) => {
      connection.query('DELETE FROM detalles_lista WHERE lista_id = ? AND producto_id = ?', [listId, productId], (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    });
  },
};

export default ListsModel;

