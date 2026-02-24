import { z } from 'zod';

export const analyzeRequestSchema = z.object({
  birthdate: z.string().regex(/^\d{4}-\d{2}-\d{2}$/),
  birthtime: z.union([z.string().regex(/^\d{1,2}$/), z.number()]),
  calendar: z.enum(['solar','lunar']).optional(),
  leapMonth: z.boolean().optional()
});

export const analyzeResponseSchema = z.object({
  reportId: z.string(),
  summary: z.string(),
  details: z.object({
    personality: z.string(),
    compatibilityScore: z.number()
  })
});

export type AnalyzeRequest = z.infer<typeof analyzeRequestSchema>;
export type AnalyzeResponse = z.infer<typeof analyzeResponseSchema>;
