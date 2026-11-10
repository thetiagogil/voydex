"use client";

import type { LibraryCreateResult } from "@/modules/mainline/shared/components/library-choice-field";
import { findOrCreateChallengeRule } from "@/modules/mainline/shared/client/library-choice-commands";
import {
  libraryNameMaxLength,
  parseLibraryName,
} from "@/modules/mainline/shared/utils/library-names";
import { localUserId } from "@/platform/local-db/device-schema";
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
      const { choice } = await save((client) =>
        findOrCreateChallengeRule(client, {
          name: ruleName,
          userId: localUserId,
        }),
      );

      return { choice, status: "success" };
    } catch (error) {
      return {
        message:
          error instanceof Error ? error.message : "Unable to add that rule.",
        status: "error",
      };
    }
  };
};
