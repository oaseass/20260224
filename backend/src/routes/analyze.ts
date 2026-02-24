import { Router } from 'express';
import multer from 'multer';
import { analyzeController } from '../controllers/analyzeController';

const router = Router();
// Use memory storage to avoid writing files to disk
const storage = multer.memoryStorage();
const upload = multer({ storage });

router.post('/', upload.single('photo'), analyzeController);

export default router;
