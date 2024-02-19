import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser'; // Importa el módulo body-parser

import productsRoutes from './routes/ProductsRoutes.js';
import listsRoutes from './routes/ListsRoutes.js';
import usersRoutes from './routes/UsersRoutes.js';

const app = express();
const port = 3000;

app.use(cors({ origin: '*' }));
app.use(bodyParser.json()); // Middleware para analizar el cuerpo de las solicitudes JSON

app.use('/api/productos', productsRoutes);
app.use('/api/listas', listsRoutes);
app.use('/api/usuarios', usersRoutes);

app.listen(port, () => {
  console.log(`Servidor Express en http://localhost:${port}`);
});
