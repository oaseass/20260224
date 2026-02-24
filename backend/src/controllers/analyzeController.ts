import { Request, Response } from 'express';
import { analyzeRequestSchema, analyzeResponseSchema } from '../schemas/analyze.schema';

export const analyzeController = (req: Request, res: Response) => {
  // Validate body
  const parseResult = analyzeRequestSchema.safeParse(req.body);
  if (!parseResult.success) {
    return res.status(400).json({ error: 'Invalid request', details: parseResult.error.errors });
  }

  // Photo handling: if file present, ensure we do NOT write to disk
  if (req.file) {
    // Buffer available at req.file.buffer — DO NOT persist. Immediately discard after potential in-memory processing.
    // (Here we do not process further in MVP)
    // Example: const buffer = req.file.buffer;
    // After any processing, do NOT save buffer to disk or DB.
  }

  // Dummy analysis response
  const response = {
    reportId: 'temp-' + Date.now(),
    summary: '통합 통계 리포트(예시): 당신은 신중하고 결단력 있는 성향입니다.',
    details: {
      personality: '신중·결단',
      compatibilityScore: 72
    }
  };

  const respCheck = analyzeResponseSchema.safeParse(response);
  if (!respCheck.success) {
    return res.status(500).json({ error: 'Response schema invalid' });
  }

  return res.status(200).json(response);
};
