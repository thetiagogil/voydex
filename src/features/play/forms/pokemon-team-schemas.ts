import { z } from "zod";

const basePokemonTeamSchema = z.object({
  species_id: z.number({ message: "Please select a Pokemon species" }),
  form_id: z.number({ message: "Please select a form" }),
  nickname: z
    .string()
    .max(15, "Nickname cannot exceed 15 characters")
    .optional()
    .or(z.literal("")),
  level: z
    .number({ message: "Level is required" })
    .int("Level must be a whole number")
    .min(1, "Level must be at least 1")
    .max(100, "Level cannot exceed 100"),
  position: z
    .number({ message: "Position is required" })
    .int()
    .min(1, "Position must be at least 1")
    .max(12, "Position cannot exceed 12"),
  gender: z.enum(["male", "female", "genderless"]).optional(),
  is_shiny: z.boolean(),
  nature_id: z.number().optional(),
  ability_id: z.number().optional(),
  move1_id: z.number().optional(),
  move2_id: z.number().optional(),
  move3_id: z.number().optional(),
  move4_id: z.number().optional(),
});

export const pokemonTeamSchema = basePokemonTeamSchema
  .extend({
    nature_id: z.number({ message: "Nature is required" }),
    ability_id: z.number({ message: "Ability is required" }),
  })
  .refine(
    (data) => {
      if (data.move2_id && !data.move1_id) return false;
      if (data.move3_id && !data.move2_id) return false;
      if (data.move4_id && !data.move3_id) return false;
      return true;
    },
    {
      message: "Moves must be filled in order",
      path: ["move1_id"],
    },
  );

export const pokemonTeamSchemaGen1And2 = basePokemonTeamSchema.refine(
  (data) => {
    if (data.move2_id && !data.move1_id) return false;
    if (data.move3_id && !data.move2_id) return false;
    if (data.move4_id && !data.move3_id) return false;
    return true;
  },
  {
    message: "Moves must be filled in order",
    path: ["move1_id"],
  },
);

export type PokemonTeamFormValues = z.infer<typeof basePokemonTeamSchema>;
