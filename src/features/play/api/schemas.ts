import { z } from "zod";

const optionalString = (maxLength: number) =>
  z
    .string()
    .max(maxLength)
    .optional()
    .or(z.literal("").transform(() => undefined))
    .or(z.null().transform(() => undefined));

const optionalNumber = z
  .number()
  .int()
  .positive()
  .optional()
  .or(z.null().transform(() => undefined));

export const createPlayBodySchema = z.object({
  gameId: z.number().int().positive("Game is required"),
  name: optionalString(50),
});

export const updatePlayBodySchema = z
  .object({
    name: optionalString(50),
    status_slug: z.string().min(1).optional(),
    notes: optionalString(500),
    include_pokedex: z.boolean().optional(),
    include_other_pokedex: z.boolean().optional(),
    include_mythical_pokemon: z.boolean().optional(),
  })
  .refine((value) => Object.keys(value).length > 0, {
    message: "At least one field is required",
  });

export const playTeamBodySchema = z.object({
  species_id: z.number().int().positive(),
  form_id: z.number().int().positive(),
  position: z.number().int().min(1).max(12),
  nickname: optionalString(15),
  level: z.number().int().min(1).max(100),
  gender: z.enum(["male", "female", "genderless"]).optional(),
  is_shiny: z.boolean(),
  nature_id: optionalNumber,
  ability_id: optionalNumber,
  move1_id: optionalNumber,
  move2_id: optionalNumber,
  move3_id: optionalNumber,
  move4_id: optionalNumber,
});

export const playTeamUpdateBodySchema = playTeamBodySchema
  .partial()
  .refine((value) => Object.keys(value).length > 0, {
    message: "At least one field is required",
  });

export const trackingItemBodySchema = z.object({
  trackingItemId: z.number().int().positive(),
});

export const trackingItemBulkBodySchema = z.object({
  trackingItemIds: z.array(z.number().int().positive()),
});

export const decisionBodySchema = z.object({
  decisionOptionId: z.number().int().positive().nullable(),
});

export const collectibleEntryBodySchema = z.object({
  collectibleEntryId: z.number().int().positive(),
});

export const collectibleEntryBulkBodySchema = z.object({
  collectibleEntryIds: z.array(z.number().int().positive()),
});

export const pokedexEntryBodySchema = z.object({
  pokedexEntryId: z.number().int().positive(),
});

export const pokedexEntryBulkBodySchema = z.object({
  pokedexEntryIds: z.array(z.number().int().positive()),
});

export const playDlcBodySchema = z.object({
  versionGroupIds: z.array(z.number().int().positive()),
});
