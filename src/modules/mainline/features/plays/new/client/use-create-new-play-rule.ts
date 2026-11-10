"use client";

import type { LibraryCreateResult } from "@/modules/mainline/shared/components/library-choice-field";
import { findOrCreateLocalChallengeRule } from "@/modules/mainline/shared/client/challenge-rules-local";
import {
  libraryNameMaxLength,
  parseLibraryName,
} from "@/modules/mainline/shared/utils/library-names";
import { LocalDbError } from "@/platform/local-db/local-db";
import { useLocalDb } from "@/platform/local-db/local-db-context";

/*
 * A custom rule of your own made from New Play's picker, saved on the
 * device, or the one you can already pick by that name. The new Play keeps
 * it once it starts.
 */
export const useCreateNewPlayRule = () => {
  const { save } = useLocalDb();

  return async (name: string): Promise<LibraryCreateResult> => {
    try {
      const ruleName = parseLibraryName(name, {
        label: "rule",
        maximum: libraryNameMaxLength.rule,
      });
      const choice = await save((db) =>
        findOrCreateLocalChallengeRule(db, ruleName),
      );

      return { choice, status: "success" };
    } catch (error) {
      return {
        message:
          /* A name problem says what to fix; a failed save stays plain. */
          error instanceof Error && !(error instanceof LocalDbError)
            ? error.message
            : "Unable to add that rule.",
        status: "error",
      };
    }
  };
};
