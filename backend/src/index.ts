import express from 'express';
import analyzeRouter from './routes/analyze';
import dotenv from 'dotenv';
dotenv.config();

const app = express();
app.use(express.json());
app.use('/api/analyze', analyzeRouter);

const PORT = process.env.PORT || 4000;
app.listen(PORT, ()=>{
  console.log(`Backend listening on http://localhost:${PORT}`);
});
