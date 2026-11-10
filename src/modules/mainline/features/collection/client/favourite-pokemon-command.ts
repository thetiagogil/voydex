import type { ServerSupabaseClient } from "@/platform/supabase/server-client";

export type FavouritePokemonInput = {
  favourite: boolean;
  formId: number;
  speciesId: number;
  userId: string;
};

/* What the heart can show when the database refuses it. */
const toFavouriteErrorMessage = ({ code }: { code?: string }) =>
  code === "23503"
    ? "That Pokémon isn't in Voydex."
    : "Unable to save your favourite right now.";

/*
 * Hearts a form or takes the heart off, one row either way. Hearting one
 * that is already a favourite, or clearing one that isn't, changes nothing,
 * so a double tap or an Undo that races a refresh never fails.
 */
export const setFavouritePokemon = async (
  supabase: ServerSupabaseClient,
  { favourite, formId, speciesId, userId }: FavouritePokemonInput,
) => {
  const table = supabase.schema("gameplay").from("user_favourite_pokemon");
  const { error } = favourite
    ? await table.upsert(
        { form_id: formId, species_id: speciesId, user_id: userId },
        { ignoreDuplicates: true, onConflict: "user_id,form_id" },
      )
    : await table.delete().eq("user_id", userId).eq("form_id", formId);

  if (error) {
    throw new Error(toFavouriteErrorMessage(error));
  }
};
