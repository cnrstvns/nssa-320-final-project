import express from 'express';
import dotenv from 'dotenv';
import morgan from 'morgan';

dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

app.use(morgan('dev'));

app.get('/', (_req, res) => {
  res.send('Hello world!');
});

app.get('/about', (_req, res) => {
  res.send({
    name: 'NSSA-320 Final Project API Demo',
    description: 'Demo using Express.JS deployed using Docker Swarm',
    lastUpdated: new Date('2023-11-18T20:03:51.319Z'),
  });
});

app.listen(port, () => {
  console.log(`[server]: Server is running at http://localhost:${port}`);
});
