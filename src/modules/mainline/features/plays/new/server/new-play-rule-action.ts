"use server";

import type { LibraryCreateResult } from "@/modules/mainline/shared/components/library-choice-field";
import { findOrCreateChallengeRule } from "@/modules/mainline/shared/server/library-choice-commands";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import {
  libraryNameMaxLength,
  parseLibraryName,
} from "@/modules/mainline/shared/utils/library-names";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";

/*
 * A custom rule of your own made from New Play's picker, or the one you can
 * already pick by that name. The new Play keeps it once it starts.
 */
export const createNewPlayRuleAction = async (
  name: string,
): Promise<LibraryCreateResult> => {
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

    return { choice, status: "success" };
  } catch (error) {
    return {
      message:
        error instanceof Error ? error.message : "Unable to add that rule.",
      status: "error",
    };
  }
};
