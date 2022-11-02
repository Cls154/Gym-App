import express from 'express';
import exerciseRoutes from './routes/exercises.js';

const PORT = 5000;
const app = express();

app.use(express.static('./client'));
app.use('/exercises', exerciseRoutes);

app.all('*', (req, res) => {
  res.status(404).send('Resource not found...');
})

app.listen(PORT, () => {
  console.log(`server is running on port: ${PORT}`);
})