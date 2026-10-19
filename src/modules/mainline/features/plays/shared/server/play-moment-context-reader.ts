import type { PlayMomentContextEntries } from "@/modules/mainline/features/plays/shared/data/play-moment-record";
import { getMainlineTimelinePokemonFormIds } from "@/modules/mainline/features/plays/shared/data/play-timeline-mappers";
import type { MainlinePlayTimelineEvent } from "@/modules/mainline/features/plays/shared/types";
import { isTrophyMilestone } from "@/modules/mainline/features/plays/shared/utils/milestone-icon";
import { getMilestoneBadgeTypeId } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import type { ServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

/*
 * What moment medallions need beyond the events themselves: each gym
 * milestone's badge type, and the type of every form the moments name (read
 * at the Play's generation), so a Pokémon medallion sits on its type's tint.
 */
export const readMainlinePlayMomentContext = async (
  supabase: ServerSupabaseClient,
  {
    events,
    generationId,
    playId,
  }: {
    events: MainlinePlayTimelineEvent[];
    generationId: number | null;
    playId: string;
  },
): Promise<PlayMomentContextEntries> => {
  const milestoneIds = uniqueNumberIds(
    events.map((event) => event.milestone_id),
  );
  const formIds = getMainlineTimelinePokemonFormIds(events);

  let attributesQuery = supabase
    .schema("reference")
    .from("pokemon_attributes")
    .select("form_id, generation_start_id, primary_type_id")
    .in("form_id", formIds.length ? formIds : [-1]);

  if (generationId) {
    attributesQuery = attributesQuery.lte("generation_start_id", generationId);
  }

  const [milestonesResult, attributesResult, typesResult] = await Promise.all([
    supabase
      .schema("views")
      .from("mainline_play_milestone_detail")
      .select("milestone_id, milestone_type_slug, badge_refs")
      .eq("play_id", playId)
      .in("milestone_id", milestoneIds.length ? milestoneIds : [-1]),
    attributesQuery.order("generation_start_id", { ascending: false }),
    supabase.schema("reference").from("types").select("id, slug"),
  ]);

  if (milestonesResult.error || attributesResult.error || typesResult.error) {
    throw new Error("Unable to load the Play's moment details.");
  }

  const typeSlugById = new Map(
    (typesResult.data ?? []).flatMap((type): [number, PokemonTypeSlug][] =>
      isPokemonTypeSlug(type.slug) ? [[type.id, type.slug]] : [],
    ),
  );
  const badgeTypeByMilestoneId = (milestonesResult.data ?? []).flatMap(
    (milestone): [number, PokemonTypeSlug][] => {
      const typeSlug = typeSlugById.get(
        getMilestoneBadgeTypeId(milestone.badge_refs) ?? -1,
      );

      return milestone.milestone_type_slug === "gym" &&
        milestone.milestone_id !== null &&
        typeSlug
        ? [[milestone.milestone_id, typeSlug]]
        : [];
    },
  );
  /* Newest generation first, so each form keeps the first row it meets. */
  const typeByFormId = new Map<number, PokemonTypeSlug>();

  for (const attribute of attributesResult.data ?? []) {
    const typeSlug = typeSlugById.get(attribute.primary_type_id);

    if (typeSlug && !typeByFormId.has(attribute.form_id)) {
      typeByFormId.set(attribute.form_id, typeSlug);
    }
  }

  return {
    badgeTypeByMilestoneId,
    trophyMilestoneIds: (milestonesResult.data ?? []).flatMap((milestone) =>
      milestone.milestone_id !== null &&
      isTrophyMilestone(milestone.milestone_type_slug)
        ? [milestone.milestone_id]
        : [],
    ),
    typeByFormId: [...typeByFormId.entries()],
  };
};
