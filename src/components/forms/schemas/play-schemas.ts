import { z } from "zod";

export const playCreateSchema = z.object({
  name: z
    .string()
    .max(50, "Name cannot exceed 50 characters")
    .optional()
    .or(z.literal("")),
});

export const playEditSchema = z.object({
  name: z
    .string()
    .max(50, "Name cannot exceed 50 characters")
    .optional()
    .or(z.literal("")),
  notes: z
    .string()
    .max(500, "Notes cannot exceed 500 characters")
    .optional()
    .or(z.literal("")),
  status_slug: z.string().min(1, "Status is required"),
  include_unique_pokemon: z.boolean(),
  include_regional_dex: z.boolean(),
  include_national_dex: z.boolean(),
  include_mythical_pokemon: z.boolean(),
});

export type PlayCreateFormValues = z.infer<typeof playCreateSchema>;
export type PlayEditFormValues = z.infer<typeof playEditSchema>;
