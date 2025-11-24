import { z } from "zod";

export const pokemonTeamSchema = z.object({
  species_id: z.number({ required_error: "Please select a Pokémon species" }),
  form_id: z.number({ required_error: "Please select a form" }),
  nickname: z.string().optional(),
  level: z
    .number({ required_error: "Level is required" })
    .int()
    .min(1, "Level must be at least 1")
    .max(100, "Level cannot exceed 100"),
  position: z
    .number({ required_error: "Position is required" })
    .int()
    .min(1, "Position must be at least 1")
    .max(12, "Position cannot exceed 12"),
  gender: z.enum(["male", "female", "genderless", "unknown"]).optional(),
  is_shiny: z.boolean().optional(),
  nature_id: z.number().optional(),
  ability_id: z.number().optional(),
  move1_id: z.number().optional(),
  move2_id: z.number().optional(),
  move3_id: z.number().optional(),
  move4_id: z.number().optional(),
});

export type PokemonTeamFormValues = z.infer<typeof pokemonTeamSchema>;
