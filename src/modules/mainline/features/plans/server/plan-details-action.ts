"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { findOrCreateChallengeRule } from "@/modules/mainline/shared/server/library-choice-commands";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import type { LibraryChoice } from "@/modules/mainline/shared/types";
import {
  libraryNameMaxLength,
  parseLibraryName,
} from "@/modules/mainline/shared/utils/library-names";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { parseInput, uuidSchema } from "@/shared/utils/input-schemas";
import { z } from "zod";

export type PlanDetails = {
  name: string;
  ruleIds: string[];
  /* Every rule you can pick: Voydex's and yours. */
  rules: LibraryChoice[];
};

export type PlanDetailsReadResult =
  | { details: PlanDetails; status: "success" }
  | { message: string; status: "error" };

export type PlanDetailsSaveResult =
  | { message: string; status: "error" }
  | { name: string; status: "success" };

export type PlanRuleCreateResult =
  | { choice: LibraryChoice; status: "success" }
  | { message: string; status: "error" };

/* As long as a name the Planner's title takes. */
const nameMaxLength = 200;

const planIdSchema = uuidSchema("That Plan couldn't be found.");
const ruleIdsSchema = z.array(uuidSchema("Pick rules from the list."), {
  error: "Pick rules from the list.",
});

const failure = (error: unknown, fallback: string) => ({
  message: error instanceof Error ? error.message : fallback,
  status: "error" as const,
});

/*
 * A Plan's details for its dialog: its name and rules, and every rule you
 * can pick. A new Plan (no id) has none yet.
 */
export const readPlanDetailsAction = async (
  planId: string | null,
): Promise<PlanDetailsReadResult> => {
  try {
    const id = planId === null ? null : parseInput(planIdSchema, planId);
    const supabase = await createServerSupabaseClient();

    await getSignedInTrainerId(supabase);

    const [rules, plan, planRules] = await Promise.all([
      supabase
        .schema("gameplay")
        .from("mainline_challenge_rules")
        .select("id, name")
        .order("name", { ascending: true }),
      id
        ? supabase
            .schema("planning")
            .from("mainline_team_plans")
            .select("name")
            .eq("id", id)
            .maybeSingle()
        : null,
      id
        ? supabase
            .schema("planning")
            .from("mainline_team_plan_challenge_rules")
            .select("challenge_rule_id")
            .eq("team_plan_id", id)
        : null,
    ]);

    if (rules.error || plan?.error || planRules?.error) {
      throw new Error("Unable to read this Plan's details.");
    }

    if (id && !plan?.data) {
      throw new Error("That Plan couldn't be found.");
    }

    return {
      details: {
        name: plan?.data?.name ?? "",
        ruleIds: (planRules?.data ?? []).map((link) => link.challenge_rule_id),
        rules: rules.data ?? [],
      },
      status: "success",
    };
  } catch (error) {
    return failure(error, "Unable to read this Plan's details.");
  }
};

/*
 * Saves a Plan's name and rules together. They never change its team, so a
 * Plan Plays follow doesn't need unlocking; the Plays keep the rules they
 * copied when they started following it.
 */
export const savePlanDetailsAction = async (input: {
  name: string;
  planId: string;
  ruleIds: string[];
}): Promise<PlanDetailsSaveResult> => {
  try {
    const planId = parseInput(planIdSchema, input.planId);
    const ruleIds = parseInput(ruleIdsSchema, input.ruleIds);
    const name = typeof input.name === "string" ? input.name.trim() : "";

    if (!name) {
      throw new Error("Give the Plan a name.");
    }

    if (name.length > nameMaxLength) {
      throw new Error(
        `The Plan name can be at most ${nameMaxLength} characters.`,
      );
    }

    const supabase = await createServerSupabaseClient();

    await getSignedInTrainerId(supabase);

    const { error } = await supabase
      .schema("planning")
      .rpc("update_mainline_team_plan_details", {
        p_challenge_rule_ids: ruleIds,
        p_name: name,
        p_team_plan_id: planId,
      });

    if (error) {
      throw new Error(
        error.code === "55000"
          ? "Restore this Plan to change it."
          : "Unable to save the Plan's details. Try again.",
      );
    }

    revalidatePath(appRoutes.mainlinePlans);
    revalidatePath(appRoutes.mainlinePlan(planId));
    revalidatePath(appRoutes.mainlineLibrary);

    return { name, status: "success" };
  } catch (error) {
    return failure(error, "Unable to save the Plan's details. Try again.");
  }
};

/* A rule for your Library, or yours by that name, to add to a Plan. */
export const createPlanRuleAction = async (
  name: string,
): Promise<PlanRuleCreateResult> => {
  try {
    const ruleName = parseLibraryName(name, {
      label: "rule",
      maximum: libraryNameMaxLength.rule,
    });
    const supabase = await createServerSupabaseClient();
    const userId = await getSignedInTrainerId(supabase);
    const { choice } = await findOrCreateChallengeRule(supabase, {
      name: ruleName,
      userId,
    });

    revalidatePath(appRoutes.mainlineLibrary);

    return { choice, status: "success" };
  } catch (error) {
    return failure(error, "Unable to add that rule.");
  }
};
