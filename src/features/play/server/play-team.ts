"use server";

import { createClient } from "@/lib/supabase/server";
import type { BaseInfo } from "@/shared/types";
import type { PlayPokemon, PlayPokemonMove } from "../types";

const TEAM_POSITION_MIN = 1;
const TEAM_POSITION_MAX = 12;

const isValidTeamPosition = (position: number) =>
  position >= TEAM_POSITION_MIN && position <= TEAM_POSITION_MAX;

type MoveMetadata = {
  type: BaseInfo | null;
  damageClass: PlayPokemonMove["damageClass"];
  pp: number | null;
};

type NatureMetadata = {
  increasedStat: string | null;
  decreasedStat: string | null;
};

const getPlayGenerationId = async (playId: string) => {
  const supabase = await createClient();

  const { data: playRow, error: playError } = await supabase
    .schema("gameplay")
    .from("plays")
    .select("game_id")
    .eq("id", playId)
    .single();

  if (playError || !playRow?.game_id) {
    return null;
  }

  const { data: gameRow, error: gameError } = await supabase
    .schema("reference")
    .from("games")
    .select("generation_id")
    .eq("id", playRow.game_id)
    .single();

  if (gameError || !gameRow?.generation_id) {
    return null;
  }

  return gameRow.generation_id as number;
};

const getMoveMetadata = async (
  moveIds: number[],
  generationId: number,
): Promise<Map<number, MoveMetadata>> => {
  const supabase = await createClient();

  if (moveIds.length === 0) {
    return new Map();
  }

  const { data: moveAttributes, error: attributesError } = await supabase
    .schema("reference")
    .from("move_attributes")
    .select("move_id, type_id, damage_class, pp, generation_start_id")
    .in("move_id", moveIds)
    .lte("generation_start_id", generationId)
    .order("move_id", { ascending: true })
    .order("generation_start_id", { ascending: false });

  if (attributesError || !moveAttributes) {
    return new Map();
  }

  const latestAttributes = new Map<
    number,
    {
      typeId: number;
      damageClass: PlayPokemonMove["damageClass"];
      pp: number | null;
    }
  >();

  for (const attribute of moveAttributes) {
    if (!latestAttributes.has(attribute.move_id)) {
      latestAttributes.set(attribute.move_id, {
        typeId: attribute.type_id,
        damageClass: attribute.damage_class,
        pp: attribute.pp,
      });
    }
  }

  const typeIds = Array.from(
    new Set(
      Array.from(latestAttributes.values())
        .map((attribute) => attribute.typeId)
        .filter(Boolean),
    ),
  );

  if (typeIds.length === 0) {
    return new Map();
  }

  const { data: types, error: typesError } = await supabase
    .schema("reference")
    .from("types")
    .select("id, slug, name")
    .in("id", typeIds);

  if (typesError || !types) {
    return new Map();
  }

  const typeMap = new Map<number, BaseInfo>(
    types.map((type) => [
      type.id,
      {
        id: type.id,
        slug: type.slug,
        name: type.name,
      },
    ]),
  );

  const metadata = new Map<number, MoveMetadata>();

  for (const [moveId, attribute] of latestAttributes) {
    metadata.set(moveId, {
      type: typeMap.get(attribute.typeId) ?? null,
      damageClass: attribute.damageClass,
      pp: attribute.pp,
    });
  }

  return metadata;
};

const getNatureMetadata = async (natureIds: number[]) => {
  const supabase = await createClient();

  if (natureIds.length === 0) {
    return new Map<number, NatureMetadata>();
  }

  const { data: natures, error } = await supabase
    .schema("reference")
    .from("natures")
    .select("id, increased_stat, decreased_stat")
    .in("id", natureIds);

  if (error || !natures) {
    return new Map<number, NatureMetadata>();
  }

  return new Map<number, NatureMetadata>(
    natures.map((nature) => [
      nature.id,
      {
        increasedStat: nature.increased_stat,
        decreasedStat: nature.decreased_stat,
      },
    ]),
  );
};

// =============================================================================
// GET PLAY TEAM (from views.play_team_detail)
// =============================================================================

export const getPlayTeam = async (playId: string) => {
  const supabase = await createClient();

  const { data, error } = await supabase
    .schema("views")
    .from("play_team_detail")
    .select("*")
    .eq("play_id", playId)
    .order("position", { ascending: true });

  if (error) return { data: null, error };
  if (!data) return { data: [], error: null };

  const generationId = await getPlayGenerationId(playId);
  const moveIds = Array.from(
    new Set(
      data.flatMap((row: any) =>
        [row.move1_id, row.move2_id, row.move3_id, row.move4_id].filter(
          (moveId): moveId is number => typeof moveId === "number",
        ),
      ),
    ),
  );

  const moveMetadataById =
    generationId !== null
      ? await getMoveMetadata(moveIds, generationId)
      : new Map<number, MoveMetadata>();
  const natureIds = Array.from(
    new Set(
      data
        .map((row: any) => row.nature_id)
        .filter((natureId): natureId is number => typeof natureId === "number"),
    ),
  );
  const natureMetadataById = await getNatureMetadata(natureIds);

  const result: PlayPokemon[] = data.map((row: any) => ({
    id: String(row.team_pokemon_id),
    playId: playId,
    position: row.position,
    nickname: row.nickname,
    level: row.level,
    gender: row.gender,
    isShiny: row.is_shiny,
    species: {
      id: row.species_id,
      slug: row.species_slug,
      name: row.species_name,
    },
    form: {
      id: row.form_id,
      slug: row.form_slug,
      name: row.form_name,
      pokemonDbSpriteSlug: row.pokemondb_sprite_slug,
    },
    types: [
      row.type1_id && {
        id: row.type1_id,
        slug: row.type1_slug,
        name: row.type1_name,
      },
      row.type2_id && {
        id: row.type2_id,
        slug: row.type2_slug,
        name: row.type2_name,
      },
    ].filter((type): type is BaseInfo => Boolean(type)),
    nature: row.nature_id
      ? {
          id: row.nature_id,
          slug: row.nature_slug,
          name: row.nature_name,
          increasedStat:
            natureMetadataById.get(row.nature_id)?.increasedStat ?? null,
          decreasedStat:
            natureMetadataById.get(row.nature_id)?.decreasedStat ?? null,
        }
      : null,
    ability: row.ability_id
      ? { id: row.ability_id, slug: row.ability_slug, name: row.ability_name }
      : null,
    moves: [
      row.move1_id && {
        id: row.move1_id,
        slug: row.move1_slug,
        name: row.move1_name,
        type: moveMetadataById.get(row.move1_id)?.type ?? null,
        damageClass: moveMetadataById.get(row.move1_id)?.damageClass ?? null,
        pp: moveMetadataById.get(row.move1_id)?.pp ?? null,
      },
      row.move2_id && {
        id: row.move2_id,
        slug: row.move2_slug,
        name: row.move2_name,
        type: moveMetadataById.get(row.move2_id)?.type ?? null,
        damageClass: moveMetadataById.get(row.move2_id)?.damageClass ?? null,
        pp: moveMetadataById.get(row.move2_id)?.pp ?? null,
      },
      row.move3_id && {
        id: row.move3_id,
        slug: row.move3_slug,
        name: row.move3_name,
        type: moveMetadataById.get(row.move3_id)?.type ?? null,
        damageClass: moveMetadataById.get(row.move3_id)?.damageClass ?? null,
        pp: moveMetadataById.get(row.move3_id)?.pp ?? null,
      },
      row.move4_id && {
        id: row.move4_id,
        slug: row.move4_slug,
        name: row.move4_name,
        type: moveMetadataById.get(row.move4_id)?.type ?? null,
        damageClass: moveMetadataById.get(row.move4_id)?.damageClass ?? null,
        pp: moveMetadataById.get(row.move4_id)?.pp ?? null,
      },
    ].filter((move): move is PlayPokemonMove => Boolean(move)),
  }));

  return { data: result, error: null };
};

// =============================================================================
// ADD POKEMON TO TEAM
// =============================================================================

export const addPokemonToTeam = async (
  playId: string,
  pokemon: {
    species_id: number;
    form_id: number;
    position: number;
    nickname?: string;
    level: number;
    gender?: string;
    is_shiny?: boolean;
    nature_id?: number;
    ability_id?: number;
    move1_id?: number;
    move2_id?: number;
    move3_id?: number;
    move4_id?: number;
  },
) => {
  const supabase = await createClient();

  if (!isValidTeamPosition(pokemon.position)) {
    return {
      data: null,
      error: {
        message: `Position must be between ${TEAM_POSITION_MIN} and ${TEAM_POSITION_MAX}.`,
      },
    };
  }

  const { count } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("*", { count: "exact", head: true })
    .eq("play_id", playId);

  if (count !== null && count >= 12) {
    return {
      data: null,
      error: {
        message: "Team is full. Maximum 12 Pokemon allowed.",
        code: "TEAM_FULL",
      },
    };
  }

  const { data: existingPokemon } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("id, position")
    .eq("play_id", playId)
    .eq("position", pokemon.position)
    .maybeSingle();

  if (existingPokemon) {
    return {
      data: null,
      error: {
        message: `Position ${pokemon.position} is already occupied.`,
        code: "POSITION_OCCUPIED",
      },
    };
  }

  const { data, error } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .insert({
      play_id: playId,
      ...pokemon,
    })
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// UPDATE POKEMON IN TEAM
// =============================================================================

export const updateTeamPokemon = async (
  pokemonId: string,
  updates: {
    species_id?: number;
    form_id?: number;
    position?: number;
    nickname?: string;
    level?: number;
    gender?: string;
    is_shiny?: boolean;
    nature_id?: number;
    ability_id?: number;
    move1_id?: number;
    move2_id?: number;
    move3_id?: number;
    move4_id?: number;
  },
) => {
  const supabase = await createClient();

  if (updates.position !== undefined) {
    if (!isValidTeamPosition(updates.position)) {
      return {
        data: null,
        error: {
          message: `Position must be between ${TEAM_POSITION_MIN} and ${TEAM_POSITION_MAX}.`,
        },
      };
    }

    const { data: currentPokemon, error: currentError } = await supabase
      .schema("gameplay")
      .from("pokemon_team")
      .select("position, play_id")
      .eq("id", pokemonId)
      .single();

    if (currentError) return { data: null, error: currentError };

    const oldPosition = currentPokemon.position;
    const newPosition = updates.position;

    if (oldPosition !== newPosition) {
      const { data: occupyingPokemon } = await supabase
        .schema("gameplay")
        .from("pokemon_team")
        .select("id, position")
        .eq("play_id", currentPokemon.play_id)
        .eq("position", newPosition)
        .neq("id", pokemonId)
        .maybeSingle();

      if (occupyingPokemon) {
        const tempPosition = TEAM_POSITION_MAX + 1;

        const { error: moveCurrentError } = await supabase
          .schema("gameplay")
          .from("pokemon_team")
          .update({ position: tempPosition })
          .eq("id", pokemonId);

        if (moveCurrentError) return { data: null, error: moveCurrentError };

        const { error: moveOccupyingError } = await supabase
          .schema("gameplay")
          .from("pokemon_team")
          .update({ position: oldPosition })
          .eq("id", occupyingPokemon.id);

        if (moveOccupyingError) {
          await supabase
            .schema("gameplay")
            .from("pokemon_team")
            .update({ position: oldPosition })
            .eq("id", pokemonId);

          return { data: null, error: moveOccupyingError };
        }

        updates.position = newPosition;
      }
    }
  }

  const { data, error } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .update(updates)
    .eq("id", pokemonId)
    .select()
    .single();

  if (error) return { data: null, error };
  return { data, error: null };
};

// =============================================================================
// REMOVE POKEMON FROM TEAM
// =============================================================================

export const removeTeamPokemon = async (pokemonId: string) => {
  const supabase = await createClient();

  const { data: removedPokemon, error: getError } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("position, play_id")
    .eq("id", pokemonId)
    .single();

  if (getError) return { data: null, error: getError };

  const removedPosition = removedPokemon.position;
  const isActiveTeam = removedPosition <= 6;

  const { error: deleteError } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .delete()
    .eq("id", pokemonId);

  if (deleteError) return { data: null, error: deleteError };

  const startPosition = isActiveTeam ? 1 : 7;
  const endPosition = isActiveTeam ? 6 : 12;

  const { data: remainingTeam, error: teamError } = await supabase
    .schema("gameplay")
    .from("pokemon_team")
    .select("id, position")
    .eq("play_id", removedPokemon.play_id)
    .gte("position", startPosition)
    .lte("position", endPosition)
    .gt("position", removedPosition)
    .order("position", { ascending: true });

  if (teamError) return { data: null, error: teamError };

  if (remainingTeam && remainingTeam.length > 0) {
    for (const pokemon of remainingTeam) {
      const { error: reorderError } = await supabase
        .schema("gameplay")
        .from("pokemon_team")
        .update({ position: pokemon.position - 1 })
        .eq("id", pokemon.id);

      if (reorderError) return { data: null, error: reorderError };
    }
  }

  return { data: { success: true }, error: null };
};
