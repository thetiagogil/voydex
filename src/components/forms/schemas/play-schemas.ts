import { z } from "zod";

export const playCreateSchema = z.object({
  name: z
    .string()
    .max(50, "Name cannot exceed 50 characters")
    .optional()
    .or(z.literal("")),
  dlc_version_group_ids: z.array(z.number()).optional(),
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
  include_pokedex: z.boolean(),
  include_other_pokedex: z.boolean(),
  include_mythical_pokemon: z.boolean(),
  dlc_version_group_ids: z.array(z.number()).optional(),
});

export type PlayCreateFormValues = z.infer<typeof playCreateSchema>;
export type PlayEditFormValues = z.infer<typeof playEditSchema>;
