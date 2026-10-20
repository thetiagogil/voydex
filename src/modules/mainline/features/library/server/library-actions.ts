"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import {
  deleteChallengeRule,
  deleteTag,
  findOrCreateChallengeRule,
  findOrCreateTag,
  renameChallengeRule,
  renameTag,
} from "@/modules/mainline/shared/server/library-choice-commands";
import type { LibraryChoice } from "@/modules/mainline/shared/types";
import { getSignedInTrainerId } from "@/modules/mainline/shared/server/signed-in-trainer";
import {
  libraryNameMaxLength,
  parseLibraryName,
} from "@/modules/mainline/shared/utils/library-names";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import {
  parseInput,
  positiveIntegerSchema,
  uuidSchema,
} from "@/shared/utils/input-schemas";

export type LibraryActionResult =
  | { choice: LibraryChoice; message: string; status: "success" }
  | { message: string; status: "error" };

export type LibraryDeleteResult =
  | { message: string; status: "success" }
  | { message: string; status: "error" };

const ruleIdSchema = uuidSchema("That rule couldn't be found.");
const tagIdSchema = uuidSchema("That tag couldn't be found.");
const kindIdSchema = positiveIntegerSchema("Pick a kind from the list.");

const failure = (
  error: unknown,
  fallback: string,
): { message: string; status: "error" } => ({
  message: error instanceof Error ? error.message : fallback,
  status: "error",
});

const getTrainer = async () => {
  const supabase = await createServerSupabaseClient();
  const userId = await getSignedInTrainerId(supabase);

  return { supabase, userId };
};

/* A rule or tag shows in the Library and on Plays. */
const revalidateLibrary = () => {
  revalidatePath(appRoutes.mainlineLibrary);
  revalidatePath(appRoutes.mainlinePlays, "layout");
};

const parseRuleName = (name: unknown) =>
  parseLibraryName(name, {
    label: "rule",
    maximum: libraryNameMaxLength.rule,
  });

const parseTagName = (name: unknown) =>
  parseLibraryName(name, { label: "tag", maximum: libraryNameMaxLength.tag });

/* A new rule of yours, of the kind picked; a name you can pick is refused. */
export const createLibraryRuleAction = async ({
  kindId,
  name,
}: {
  kindId: number;
  name: string;
}): Promise<LibraryActionResult> => {
  try {
    const ruleName = parseRuleName(name);
    const ruleKindId = parseInput(kindIdSchema, kindId);
    const { supabase, userId } = await getTrainer();
    const { choice, created } = await findOrCreateChallengeRule(supabase, {
      kindId: ruleKindId,
      name: ruleName,
      userId,
    });

    if (!created) {
      throw new Error(`You already have a rule called ${choice.name}.`);
    }

    revalidateLibrary();

    return { choice, message: `${choice.name} added`, status: "success" };
  } catch (error) {
    return failure(error, "Unable to add that rule.");
  }
};

/* A new name (and kind) for one of your rules, everywhere it's kept. */
export const updateLibraryRuleAction = async ({
  id,
  kindId,
  name,
}: {
  id: string;
  kindId: number;
  name: string;
}): Promise<LibraryActionResult> => {
  try {
    const ruleId = parseInput(ruleIdSchema, id);
    const ruleName = parseRuleName(name);
    const ruleKindId = parseInput(kindIdSchema, kindId);
    const { supabase, userId } = await getTrainer();
    const choice = await renameChallengeRule(supabase, {
      id: ruleId,
      kindId: ruleKindId,
      name: ruleName,
      userId,
    });

    revalidateLibrary();

    return { choice, message: "Rule saved", status: "success" };
  } catch (error) {
    return failure(error, "Unable to save that rule.");
  }
};

/* Deletes one of your rules for good, from every Play. */
export const deleteLibraryRuleAction = async (
  id: string,
): Promise<LibraryDeleteResult> => {
  try {
    const ruleId = parseInput(ruleIdSchema, id);
    const { supabase, userId } = await getTrainer();

    await deleteChallengeRule(supabase, { id: ruleId, userId });
    revalidateLibrary();

    return { message: "Rule deleted", status: "success" };
  } catch (error) {
    return failure(error, "Unable to delete that rule.");
  }
};

/* A new tag of yours; a name you already have is refused. */
export const createLibraryTagAction = async (
  name: string,
): Promise<LibraryActionResult> => {
  try {
    const tagName = parseTagName(name);
    const { supabase, userId } = await getTrainer();
    const { choice, created } = await findOrCreateTag(supabase, {
      name: tagName,
      userId,
    });

    if (!created) {
      throw new Error(`You already have a tag called ${choice.name}.`);
    }

    revalidateLibrary();

    return { choice, message: `${choice.name} added`, status: "success" };
  } catch (error) {
    return failure(error, "Unable to add that tag.");
  }
};

/* A new name for one of your tags, everywhere it's worn. */
export const renameLibraryTagAction = async ({
  id,
  name,
}: {
  id: string;
  name: string;
}): Promise<LibraryActionResult> => {
  try {
    const tagId = parseInput(tagIdSchema, id);
    const tagName = parseTagName(name);
    const { supabase, userId } = await getTrainer();
    const choice = await renameTag(supabase, {
      id: tagId,
      name: tagName,
      userId,
    });

    revalidateLibrary();

    return { choice, message: "Tag renamed", status: "success" };
  } catch (error) {
    return failure(error, "Unable to rename that tag.");
  }
};

/* Deletes one of your tags for good, from every Play. */
export const deleteLibraryTagAction = async (
  id: string,
): Promise<LibraryDeleteResult> => {
  try {
    const tagId = parseInput(tagIdSchema, id);
    const { supabase, userId } = await getTrainer();

    await deleteTag(supabase, { id: tagId, userId });
    revalidateLibrary();

    return { message: "Tag deleted", status: "success" };
  } catch (error) {
    return failure(error, "Unable to delete that tag.");
  }
};
