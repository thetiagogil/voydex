import { z } from "zod";

// Schema for creating a new play
export const playCreateSchema = z.object({
  name: z
    .string()
    .max(100, "Name cannot exceed 100 characters")
    .optional()
    .or(z.literal("")),
});

// Schema for editing a play
export const playEditSchema = z.object({
  name: z
    .string()
    .max(100, "Name cannot exceed 100 characters")
    .optional()
    .or(z.literal("")),
  notes: z
    .string()
    .max(500, "Notes cannot exceed 500 characters")
    .optional()
    .or(z.literal("")),
  status_slug: z.string().min(1, "Status is required"),
});

export type PlayCreateFormValues = z.infer<typeof playCreateSchema>;
export type PlayEditFormValues = z.infer<typeof playEditSchema>;
