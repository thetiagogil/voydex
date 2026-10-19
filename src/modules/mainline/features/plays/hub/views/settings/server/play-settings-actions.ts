"use server";

import { revalidatePath } from "next/cache";
import { z } from "zod";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { playIdSchema } from "@/modules/mainline/features/plays/shared/utils/play-input-schemas";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  parseInput,
  positiveIntegerSchema,
  uuidSchema,
} from "@/shared/utils/input-schemas";

import type { PlaySettingsChoice } from "../types";
import {
  parseSettingsChipName,
  type PlayGeneralSettingsInput,
} from "../utils/play-settings-validation";
import {
  findOrCreateChallengeRule,
  findOrCreateTag,
} from "./play-settings-choice-commands";
import {
  deleteMainlinePlay,
  readOwnedPlay,
  updatePlayChallengeRules,
  updatePlayExpansions,
  updatePlayGeneralSettings,
  updatePlayTags,
} from "./play-settings-commands";

export type PlaySettingsActionResult = {
  message: string;
  status: "error" | "success";
};

export type PlaySettingsCreateResult =
  | { choice: PlaySettingsChoice; message: string; status: "success" }
  | { message: string; status: "error" };

const expansionIdsSchema = z.array(
  positiveIntegerSchema("Pick expansions from the list."),
  { error: "Pick expansions from the list." },
);
const ruleIdsSchema = z.array(uuidSchema("Pick rules from the list."), {
  error: "Pick rules from the list.",
});
const tagIdsSchema = z.array(uuidSchema("Pick tags from the list."), {
  error: "Pick tags from the list.",
});

const success = (message: string): PlaySettingsActionResult => ({
  message,
  status: "success",
});

const failure = (
  error: unknown,
  fallback: string,
): { message: string; status: "error" } => ({
  message: error instanceof Error ? error.message : fallback,
  status: "error",
});

/* The owner's client and the Play's game, or an error the form can show. */
const getOwnedPlay = async (rawPlayId: string) => {
  const playId = parseInput(playIdSchema, rawPlayId);
  const supabase = await createServerSupabaseClient();
  const claimsResult = await getClaimsWithTimeout(supabase);
  const userId = claimsResult?.data?.claims?.sub;

  if (!userId) {
    throw new Error("You must be logged in to change Play settings.");
  }

  const play = await readOwnedPlay(supabase, { playId, userId });

  return { play, supabase, userId };
};

const revalidatePlay = (playId: string) => {
  revalidatePath(appRoutes.mainlinePlay(playId), "layout");
  revalidatePath(appRoutes.mainlinePlays);
};

/* General: name, trainer, start day, playtime and status. */
export const updatePlayGeneralSettingsAction = async ({
  input,
  playId,
}: {
  input: PlayGeneralSettingsInput;
  playId: string;
}): Promise<PlaySettingsActionResult> => {
  try {
    const { play, supabase } = await getOwnedPlay(playId);

    await updatePlayGeneralSettings(supabase, { input, play });
    revalidatePlay(playId);

    return success("General settings saved");
  } catch (error) {
    return failure(error, "Unable to save these settings.");
  }
};

/* Expansions you own: the game's optional content scopes this Play tracks. */
export const updatePlayExpansionsAction = async ({
  playId,
  versionGroupIds,
}: {
  playId: string;
  versionGroupIds: number[];
}): Promise<PlaySettingsActionResult> => {
  try {
    const expansionIds = parseInput(expansionIdsSchema, versionGroupIds);
    const { play, supabase } = await getOwnedPlay(playId);

    await updatePlayExpansions(supabase, {
      play,
      versionGroupIds: expansionIds,
    });
    revalidatePlay(playId);

    return success("Tracking saved");
  } catch (error) {
    return failure(error, "Unable to save tracking.");
  }
};

/* Challenge rules: which of the available rules this Play keeps. */
export const updatePlayChallengeRulesAction = async ({
  playId,
  ruleIds,
}: {
  playId: string;
  ruleIds: string[];
}): Promise<PlaySettingsActionResult> => {
  try {
    const pickedRuleIds = parseInput(ruleIdsSchema, ruleIds);
    const { supabase } = await getOwnedPlay(playId);

    await updatePlayChallengeRules(supabase, {
      playId,
      ruleIds: pickedRuleIds,
    });
    revalidatePlay(playId);

    return success("Challenge rules saved");
  } catch (error) {
    return failure(error, "Unable to save the challenge rules.");
  }
};

/*
 * A custom challenge rule of your own, or the one you can already pick by
 * that name. Picking it for this Play is the section's save.
 */
export const createPlayChallengeRuleAction = async ({
  name,
  playId,
}: {
  name: string;
  playId: string;
}): Promise<PlaySettingsCreateResult> => {
  try {
    const ruleName = parseSettingsChipName(name, {
      label: "rule",
      maximum: 80,
    });
    const { supabase, userId } = await getOwnedPlay(playId);
    const { choice, created } = await findOrCreateChallengeRule(supabase, {
      name: ruleName,
      userId,
    });

    return {
      choice,
      message: created ? "Rule added" : "Rule picked",
      status: "success",
    };
  } catch (error) {
    return failure(error, "Unable to add that rule.");
  }
};

/*
 * A tag of your own, or the one you already have by that name. Picking it
 * for this Play is the section's save.
 */
export const createPlayTagAction = async ({
  name,
  playId,
}: {
  name: string;
  playId: string;
}): Promise<PlaySettingsCreateResult> => {
  try {
    const tagName = parseSettingsChipName(name, { label: "tag", maximum: 40 });
    const { supabase, userId } = await getOwnedPlay(playId);
    const { choice, created } = await findOrCreateTag(supabase, {
      name: tagName,
      userId,
    });

    return {
      choice,
      message: created ? "Tag added" : "Tag picked",
      status: "success",
    };
  } catch (error) {
    return failure(error, "Unable to add that tag.");
  }
};

/* Tags: which of your tags this Play wears. */
export const updatePlayTagsAction = async ({
  playId,
  tagIds,
}: {
  playId: string;
  tagIds: string[];
}): Promise<PlaySettingsActionResult> => {
  try {
    const pickedTagIds = parseInput(tagIdsSchema, tagIds);
    const { supabase, userId } = await getOwnedPlay(playId);

    await updatePlayTags(supabase, { playId, tagIds: pickedTagIds, userId });
    revalidatePlay(playId);

    return success("Tags saved");
  } catch (error) {
    return failure(error, "Unable to save the tags.");
  }
};

/* Deletes the Play and everything recorded in it; it can't be undone. */
export const deletePlayAction = async ({
  playId,
}: {
  playId: string;
}): Promise<PlaySettingsActionResult> => {
  try {
    const { supabase, userId } = await getOwnedPlay(playId);

    await deleteMainlinePlay(supabase, { playId, userId });
    revalidatePath(appRoutes.mainlinePlays);
    revalidatePath(appRoutes.mainline);

    return success("Play deleted");
  } catch (error) {
    return failure(error, "Unable to delete this Play.");
  }
};
