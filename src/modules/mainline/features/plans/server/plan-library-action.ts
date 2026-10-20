"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { readPlanStatusSlug } from "@/modules/mainline/features/plans/server/plan-status-reader";
import {
  findOrCreateChallengeRule,
  findOrCreateTag,
  type LibraryChoice,
} from "@/modules/mainline/shared/server/library-choice-commands";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import {
  libraryNameMaxLength,
  parseLibraryName,
} from "@/modules/mainline/shared/utils/library-names";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { parseInput, uuidSchema } from "@/shared/utils/input-schemas";

export type PlanLibrary = {
  ruleIds: string[];
  rules: LibraryChoice[];
  tagIds: string[];
  tags: LibraryChoice[];
};

export type PlanLibraryReadResult =
  | { library: PlanLibrary; status: "success" }
  | { message: string; status: "error" };

export type PlanLibraryResult =
  | { message: string; status: "error" }
  | { status: "success" };

export type PlanLibraryCreateResult =
  | { choice: LibraryChoice; status: "success" }
  | { message: string; status: "error" };

type LibraryNoun = "rule" | "tag";

const planIdSchema = uuidSchema("That Plan couldn't be found.");
const choiceIdSchema = uuidSchema("Pick one from the list.");

const failure = (error: unknown, fallback: string) => ({
  message: error instanceof Error ? error.message : fallback,
  status: "error" as const,
});

const getTrainer = async () => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);

  return { supabase, userId };
};

/* The rules and tags you can pick, and the ones this Plan keeps. */
export const readPlanLibraryAction = async (
  planId: string,
): Promise<PlanLibraryReadResult> => {
  try {
    const id = parseInput(planIdSchema, planId);
    const { supabase, userId } = await getTrainer();
    const [rules, tags, planRules, planTags] = await Promise.all([
      supabase
        .schema("gameplay")
        .from("mainline_challenge_rules")
        .select("id, name")
        .order("name", { ascending: true }),
      supabase
        .from("tags")
        .select("id, name")
        .eq("user_id", userId)
        .order("name", { ascending: true }),
      supabase
        .schema("planning")
        .from("mainline_team_plan_challenge_rules")
        .select("challenge_rule_id")
        .eq("team_plan_id", id),
      supabase
        .schema("planning")
        .from("mainline_team_plan_tags")
        .select("tag_id")
        .eq("team_plan_id", id),
    ]);

    if (rules.error || tags.error || planRules.error || planTags.error) {
      throw new Error("Unable to read this Plan's rules and tags.");
    }

    return {
      library: {
        ruleIds: (planRules.data ?? []).map((link) => link.challenge_rule_id),
        rules: rules.data ?? [],
        tagIds: (planTags.data ?? []).map((link) => link.tag_id),
        tags: tags.data ?? [],
      },
      status: "success",
    };
  } catch (error) {
    return failure(error, "Unable to read this Plan's rules and tags.");
  }
};

/*
 * Adds one rule or tag to a Plan, or takes it off; each change is saved on
 * its own. An archived Plan is restored first.
 */
export const setPlanLibraryLinkAction = async ({
  choiceId,
  linked,
  noun,
  planId,
}: {
  choiceId: string;
  linked: boolean;
  noun: LibraryNoun;
  planId: string;
}): Promise<PlanLibraryResult> => {
  try {
    const id = parseInput(planIdSchema, planId);
    const choice = parseInput(choiceIdSchema, choiceId);
    const { supabase, userId } = await getTrainer();
    const status = await readPlanStatusSlug(supabase, id);

    if (!status) {
      throw new Error("That Plan couldn't be found.");
    }

    if (status === "archived") {
      throw new Error("Restore this Plan to change it.");
    }

    const planning = supabase.schema("planning");
    const { error } =
      noun === "rule"
        ? linked
          ? await planning
              .from("mainline_team_plan_challenge_rules")
              .upsert(
                { challenge_rule_id: choice, team_plan_id: id },
                { ignoreDuplicates: true },
              )
          : await planning
              .from("mainline_team_plan_challenge_rules")
              .delete()
              .eq("team_plan_id", id)
              .eq("challenge_rule_id", choice)
        : linked
          ? await planning
              .from("mainline_team_plan_tags")
              .upsert(
                { tag_id: choice, team_plan_id: id, user_id: userId },
                { ignoreDuplicates: true },
              )
          : await planning
              .from("mainline_team_plan_tags")
              .delete()
              .eq("team_plan_id", id)
              .eq("tag_id", choice);

    if (error) {
      throw new Error(`Unable to change this Plan's ${noun}s.`);
    }

    revalidatePath(appRoutes.mainlinePlan(id));
    revalidatePath(appRoutes.mainlineLibrary);

    return { status: "success" };
  } catch (error) {
    return failure(error, `Unable to change this Plan's ${noun}s.`);
  }
};

/* A rule or tag for your Library, or yours by that name, to add to a Plan. */
export const createPlanLibraryChoiceAction = async ({
  name,
  noun,
}: {
  name: string;
  noun: LibraryNoun;
}): Promise<PlanLibraryCreateResult> => {
  try {
    const choiceName = parseLibraryName(name, {
      label: noun,
      maximum: libraryNameMaxLength[noun],
    });
    const { supabase, userId } = await getTrainer();
    const { choice } =
      noun === "rule"
        ? await findOrCreateChallengeRule(supabase, {
            name: choiceName,
            userId,
          })
        : await findOrCreateTag(supabase, { name: choiceName, userId });

    revalidatePath(appRoutes.mainlineLibrary);

    return { choice, status: "success" };
  } catch (error) {
    return failure(error, `Unable to add that ${noun}.`);
  }
};
