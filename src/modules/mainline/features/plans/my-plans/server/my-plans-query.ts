import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import type {
  MyPlan,
  MyPlanMember,
} from "@/modules/mainline/features/plans/my-plans/data/my-plans-model";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { uniqueNumberIds } from "@/shared/utils/collections";

/*
 * My Plans: every Plan with its version group, who follows it and its six
 * Pokémon (each tinted by its primary type, read at the Plan's generation).
 */
export const getMyPlansPageData = async (): Promise<MyPlan[]> => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);
  const plansResult = await supabase
    .schema("views")
    .from("mainline_team_plan_summary")
    .select(
      "game_slug, generation_id, linked_play_count, member_count, status_slug, team_plan_id, team_plan_name, updated_at, version_group_name, version_group_slug",
    )
    .eq("user_id", userId)
    .order("updated_at", { ascending: false });

  if (plansResult.error) {
    throw new Error("Unable to load your Plans.");
  }

  const plans = plansResult.data ?? [];
  const planIds = plans.flatMap((plan) =>
    plan.team_plan_id ? [plan.team_plan_id] : [],
  );

  if (!planIds.length) {
    return [];
  }

  const membersResult = await supabase
    .schema("views")
    .from("mainline_team_plan_detail")
    .select(
      "slot, target_form_id, target_form_name, target_species_name, target_sprite_slug, team_plan_id",
    )
    .in("team_plan_id", planIds)
    .order("slot");

  if (membersResult.error) {
    throw new Error("Unable to load your Plans' Pokémon.");
  }

  const members = membersResult.data ?? [];
  const formIds = uniqueNumberIds(
    members.map((member) => member.target_form_id),
  );
  const [attributesResult, typesResult] = await Promise.all([
    formIds.length
      ? supabase
          .schema("reference")
          .from("pokemon_attributes")
          .select("form_id, generation_start_id, primary_type_id")
          .in("form_id", formIds)
          .order("generation_start_id", { ascending: false })
      : null,
    supabase.schema("reference").from("types").select("id, slug"),
  ]);

  /* A missing tint falls back to neutral; it never hides a Plan. */
  const attributes = attributesResult?.error
    ? []
    : (attributesResult?.data ?? []);
  const typeSlugById = new Map(
    (typesResult.error ? [] : typesResult.data).map((type) => [
      type.id,
      type.slug,
    ]),
  );

  return plans.flatMap((plan): MyPlan[] => {
    if (!plan.team_plan_id) return [];

    const planMembers = members
      .filter((member) => member.team_plan_id === plan.team_plan_id)
      .map((member): MyPlanMember => {
        const attribute = attributes.find(
          (row) =>
            row.form_id === member.target_form_id &&
            (plan.generation_id === null ||
              row.generation_start_id <= plan.generation_id),
        );

        return {
          imageUrl: getPokemonFormImageUrl({
            name: member.target_form_name ?? member.target_species_name ?? "",
            sprite_slug: member.target_sprite_slug,
          }),
          name: member.target_species_name ?? "Pokémon",
          slot: member.slot ?? 0,
          typeSlug: attribute
            ? (typeSlugById.get(attribute.primary_type_id) ?? null)
            : null,
        };
      });

    return [
      {
        gameSlug: plan.game_slug,
        id: plan.team_plan_id,
        isArchived: plan.status_slug === "archived",
        linkedPlayCount: plan.linked_play_count ?? 0,
        memberCount: plan.member_count ?? planMembers.length,
        members: planMembers,
        name: plan.team_plan_name ?? "Untitled Plan",
        updatedAt: plan.updated_at,
        versionGroupName: plan.version_group_name ?? "Unknown game",
        versionGroupSlug: plan.version_group_slug ?? "",
      },
    ];
  });
};
