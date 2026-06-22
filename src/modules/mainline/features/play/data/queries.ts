import { createServerSupabaseClient } from "@/lib/supabase/server";
import type {
  Game,
  GameCard,
  PokemonAttributes,
  PokemonForm,
  Type,
} from "@/modules/codex/types";
import { getGameCoverImageUrl } from "@/modules/codex/media/game-images";
import { getPokemonFormImageUrl } from "@/shared/pokemon/pokemon-images";
import type {
  CreateMainlinePlayPageData,
  MainlinePlayDetailData,
  MainlinePlaysPageData,
  MainlinePokemonDisplayMetadata,
  MainlineReferenceRows,
} from "@/modules/mainline/features/play/types";
import type { ProductFamily } from "@/modules/mainline/shared/types/mainline.types";
import { getClaimsWithTimeout } from "@/lib/supabase/auth";

type ServerSupabaseClient = Awaited<
  ReturnType<typeof createServerSupabaseClient>
>;

function byId<T extends { id: number }>(rows: T[]): Map<number, T> {
  return new Map(rows.map((row) => [row.id, row]));
}

function uniqueNumberIds(values: Array<number | null>): number[] {
  return Array.from(
    new Set(
      values.filter((value): value is number => typeof value === "number"),
    ),
  );
}

function buildAttributeByFormId(
  attributes: PokemonAttributes[],
): Map<number, PokemonAttributes> {
  const attributeByFormId = new Map<number, PokemonAttributes>();

  for (const attribute of attributes) {
    const current = attributeByFormId.get(attribute.form_id);

    if (
      !current ||
      attribute.generation_start_id > current.generation_start_id
    ) {
      attributeByFormId.set(attribute.form_id, attribute);
    }
  }

  return attributeByFormId;
}

async function loadPokemonDisplayMetadata(
  supabase: ServerSupabaseClient,
  formIds: number[],
  generationId: number | null,
): Promise<Map<number, MainlinePokemonDisplayMetadata>> {
  const displayByFormId = new Map<number, MainlinePokemonDisplayMetadata>();

  if (!formIds.length) {
    return displayByFormId;
  }

  const [formsResult, attributesResult, typesResult] = await Promise.all([
    supabase
      .schema("reference")
      .from("pokemon_forms")
      .select("*")
      .in("id", formIds),
    supabase
      .schema("reference")
      .from("pokemon_attributes")
      .select("*")
      .in("form_id", formIds)
      .lte("generation_start_id", generationId ?? 99),
    supabase.schema("reference").from("types").select("*"),
  ]);

  if (formsResult.error || attributesResult.error || typesResult.error) {
    throw new Error("Unable to load Pokemon display metadata.");
  }

  const formById = byId((formsResult.data ?? []) as PokemonForm[]);
  const typeById = byId((typesResult.data ?? []) as Type[]);
  const attributeByFormId = buildAttributeByFormId(
    (attributesResult.data ?? []) as PokemonAttributes[],
  );

  for (const formId of formIds) {
    const form = formById.get(formId) ?? null;
    const attribute = attributeByFormId.get(formId) ?? null;

    displayByFormId.set(formId, {
      imageUrl: getPokemonFormImageUrl(form),
      primaryType: attribute
        ? (typeById.get(attribute.primary_type_id) ?? null)
        : null,
      secondaryType: attribute?.secondary_type_id
        ? (typeById.get(attribute.secondary_type_id) ?? null)
        : null,
    });
  }

  return displayByFormId;
}

function getEmptyPokemonDisplay(): MainlinePokemonDisplayMetadata {
  return {
    imageUrl: null,
    primaryType: null,
    secondaryType: null,
  };
}

function isUuid(value: string): boolean {
  return /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(
    value,
  );
}

function buildGameOptions(
  games: Game[],
  referenceRows: MainlineReferenceRows,
): GameCard[] {
  const generationById = byId(referenceRows.generations);
  const regionById = byId(referenceRows.regions);
  const versionGroupById = byId(referenceRows.versionGroups);
  const platformById = byId(referenceRows.platforms);
  const platformsByGame = new Map<number, GameCard["platforms"]>();

  for (const gamePlatform of referenceRows.gamePlatforms) {
    const platform = platformById.get(gamePlatform.platform_id);

    if (!platform) {
      continue;
    }

    const platforms = platformsByGame.get(gamePlatform.game_id) ?? [];
    platforms.push(platform);
    platformsByGame.set(gamePlatform.game_id, platforms);
  }

  return games.map((game) => ({
    coverImageUrl: getGameCoverImageUrl(game),
    game,
    generation: generationById.get(game.generation_id) ?? null,
    gameType: null,
    platforms: platformsByGame.get(game.id) ?? [],
    region: regionById.get(game.region_id) ?? null,
    versionGroup: versionGroupById.get(game.version_group_id) ?? null,
  }));
}

async function getMainlineProductFamily(): Promise<ProductFamily | null> {
  const supabase = await createServerSupabaseClient();

  const productFamilyResult = await supabase
    .schema("reference")
    .from("product_families")
    .select("*")
    .eq("slug", "mainline")
    .maybeSingle();

  if (productFamilyResult.error) {
    throw new Error("Unable to load Mainline product family.");
  }

  return productFamilyResult.data ?? null;
}

export async function getMainlinePlaysPageData(): Promise<MainlinePlaysPageData> {
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to load plays for the current account.");
  }

  const playsResult = await supabase
    .schema("views")
    .from("mainline_play_summary")
    .select("*")
    .eq("user_id", userId)
    .is("archived_at", null)
    .order("updated_at", { ascending: false });

  if (playsResult.error) {
    throw new Error("Unable to load Mainline plays.");
  }

  return {
    plays: playsResult.data ?? [],
  };
}

export async function getCreateMainlinePlayPageData(): Promise<CreateMainlinePlayPageData> {
  const supabase = await createServerSupabaseClient();
  const productFamily = await getMainlineProductFamily();

  if (!productFamily) {
    return {
      defaultStatusId: null,
      games: [],
      statuses: [],
    };
  }

  const [
    gamesResult,
    generationsResult,
    regionsResult,
    versionGroupsResult,
    gamePlatformsResult,
    platformsResult,
    statusesResult,
  ] = await Promise.all([
    supabase
      .schema("reference")
      .from("games")
      .select("*")
      .eq("product_family_id", productFamily.id)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("generations")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("regions")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("version_groups")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("game_platforms")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("reference")
      .from("platforms")
      .select("*")
      .order("sort_order", { ascending: true }),
    supabase
      .schema("gameplay")
      .from("mainline_play_statuses")
      .select("*")
      .order("sort_order", { ascending: true }),
  ]);

  if (
    gamesResult.error ||
    generationsResult.error ||
    regionsResult.error ||
    versionGroupsResult.error ||
    gamePlatformsResult.error ||
    platformsResult.error ||
    statusesResult.error
  ) {
    throw new Error("Unable to load Mainline play setup data.");
  }

  const statuses = statusesResult.data ?? [];
  const defaultStatus =
    statuses.find((status) => status.slug === "in_progress") ??
    statuses.find((status) => !status.is_terminal) ??
    statuses[0] ??
    null;

  return {
    defaultStatusId: defaultStatus?.id ?? null,
    games: buildGameOptions(gamesResult.data ?? [], {
      gamePlatforms: gamePlatformsResult.data ?? [],
      generations: generationsResult.data ?? [],
      platforms: platformsResult.data ?? [],
      regions: regionsResult.data ?? [],
      versionGroups: versionGroupsResult.data ?? [],
    }),
    statuses,
  };
}

export async function getMainlinePlayDetailData(
  playId: string,
): Promise<MainlinePlayDetailData | null> {
  if (!isUuid(playId)) {
    return null;
  }

  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("Unable to load the current account.");
  }

  const overviewResult = await supabase
    .schema("views")
    .from("mainline_play_overview")
    .select("*")
    .eq("play_id", playId)
    .eq("user_id", userId)
    .maybeSingle();

  if (overviewResult.error) {
    throw new Error("Unable to load Mainline play.");
  }

  if (!overviewResult.data) {
    return null;
  }

  const overview = overviewResult.data;

  const [
    completionSummaryResult,
    milestoneCategoriesResult,
    milestonesResult,
    pokedexEntriesResult,
    collectibleEntriesResult,
    teamResult,
    timelineEventsResult,
    gameResult,
  ] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_completion_summary")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .maybeSingle(),
    supabase
      .schema("views")
      .from("mainline_play_milestone_category_summary")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .order("category_sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .order("sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_pokedex_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .order("pokedex_number", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_collectible_detail")
      .select("*")
      .eq("play_id", playId)
      .eq("user_id", userId)
      .order("collectible_id", { ascending: true })
      .order("collectible_entry_sort_order", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_team_detail")
      .select("*")
      .eq("play_id", playId)
      .order("roster_state_id", { ascending: true })
      .order("slot", { ascending: true }),
    supabase
      .schema("views")
      .from("mainline_play_timeline_detail")
      .select("*")
      .eq("play_id", playId)
      .order("timeline_order", { ascending: false }),
    overview.game_id
      ? supabase
          .schema("reference")
          .from("games")
          .select("*")
          .eq("id", overview.game_id)
          .maybeSingle()
      : Promise.resolve({ data: null, error: null }),
  ]);

  if (
    completionSummaryResult.error ||
    milestoneCategoriesResult.error ||
    milestonesResult.error ||
    pokedexEntriesResult.error ||
    collectibleEntriesResult.error ||
    teamResult.error ||
    timelineEventsResult.error ||
    gameResult.error
  ) {
    throw new Error("Unable to load Mainline play details.");
  }

  const teamRows = teamResult.data ?? [];
  const pokedexRows = pokedexEntriesResult.data ?? [];
  const formIds = uniqueNumberIds([
    ...teamRows.map((pokemon) => pokemon.form_id),
    ...pokedexRows.map((entry) => entry.display_form_id),
  ]);
  const displayByFormId = await loadPokemonDisplayMetadata(
    supabase,
    formIds,
    overview.generation_id,
  );

  return {
    collectibleEntries: collectibleEntriesResult.data ?? [],
    completionSummary: completionSummaryResult.data ?? null,
    gameCoverImageUrl: gameResult.data
      ? getGameCoverImageUrl(gameResult.data as Game)
      : null,
    milestoneCategories: milestoneCategoriesResult.data ?? [],
    milestones: milestonesResult.data ?? [],
    overview,
    pokedexEntries: pokedexRows.map((entry) => ({
      ...entry,
      display: entry.display_form_id
        ? (displayByFormId.get(entry.display_form_id) ??
          getEmptyPokemonDisplay())
        : getEmptyPokemonDisplay(),
    })),
    team: teamRows.map((pokemon) => ({
      ...pokemon,
      display: pokemon.form_id
        ? (displayByFormId.get(pokemon.form_id) ?? getEmptyPokemonDisplay())
        : getEmptyPokemonDisplay(),
    })),
    teamPlanDetails: [],
    teamPlanSummary: null,
    timelineEvents: timelineEventsResult.data ?? [],
  };
}
