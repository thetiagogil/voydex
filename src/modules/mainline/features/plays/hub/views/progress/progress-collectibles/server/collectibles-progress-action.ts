"use server";

import { revalidatePath } from "next/cache";

import { appRoutes } from "@/config/routes";
import { getClaimsWithTimeout } from "@/platform/supabase/auth";
import { createServerSupabaseClient } from "@/platform/supabase/server-client";
import { isUuid } from "@/shared/utils/identifiers";

export type CollectibleProgressActionResult = {
  message: string;
  status: "error" | "success";
};

const MAX_COLLECTIBLE_PROGRESS_BATCH_SIZE = 500;

const updateCollectibleEntryProgressBatch = async ({
  collectibleEntryIds,
  isCollected,
  playId,
}: {
  collectibleEntryIds: number[];
  isCollected: boolean;
  playId: string;
}): Promise<CollectibleProgressActionResult> => {
  try {
    if (!isUuid(playId)) {
      throw new Error("A valid Play is required.");
    }

    if (typeof isCollected !== "boolean") {
      throw new Error("A valid collectible progress state is required.");
    }

    const uniqueCollectibleEntryIds = [...new Set(collectibleEntryIds)];

    if (
      uniqueCollectibleEntryIds.length === 0 ||
      uniqueCollectibleEntryIds.length > MAX_COLLECTIBLE_PROGRESS_BATCH_SIZE ||
      uniqueCollectibleEntryIds.some(
        (entryId) => !Number.isInteger(entryId) || entryId <= 0,
      )
    ) {
      throw new Error(
        "Between 1 and 500 valid collectible entries are required.",
      );
    }

    const supabase = await createServerSupabaseClient();
    const claimsResult = await getClaimsWithTimeout(supabase);

    if (!claimsResult?.data?.claims?.sub) {
      throw new Error("You must be signed in to update collectibles.");
    }

    const entryResult = await supabase
      .schema("views")
      .from("mainline_play_collectible_detail")
      .select("collectible_entry_id")
      .eq("play_id", playId)
      .in("collectible_entry_id", uniqueCollectibleEntryIds);

    if (entryResult.error) {
      throw new Error(entryResult.error.message);
    }

    const availableEntryIds = new Set(
      entryResult.data.map((entry) => entry.collectible_entry_id),
    );

    if (
      uniqueCollectibleEntryIds.some(
        (entryId) => !availableEntryIds.has(entryId),
      )
    ) {
      throw new Error(
        "One or more collectibles are not available for the Play.",
      );
    }

    if (isCollected) {
      const collectedAt = new Date().toISOString();
      const upsertResult = await supabase
        .schema("gameplay")
        .from("mainline_play_collectible_entry_progress")
        .upsert(
          uniqueCollectibleEntryIds.map((collectibleEntryId) => ({
            collected_at: collectedAt,
            collectible_entry_id: collectibleEntryId,
            play_id: playId,
          })),
          {
            ignoreDuplicates: true,
            onConflict: "play_id,collectible_entry_id",
          },
        );

      if (upsertResult.error) {
        throw new Error(upsertResult.error.message);
      }
    } else {
      const deleteResult = await supabase
        .schema("gameplay")
        .from("mainline_play_collectible_entry_progress")
        .delete()
        .eq("play_id", playId)
        .in("collectible_entry_id", uniqueCollectibleEntryIds);

      if (deleteResult.error) {
        throw new Error(deleteResult.error.message);
      }
    }

    revalidatePath(appRoutes.mainlinePlay(playId));
    revalidatePath(appRoutes.mainlinePlayProgressCollectibles(playId));

    return {
      message:
        uniqueCollectibleEntryIds.length === 1
          ? isCollected
            ? "Collectible marked as collected."
            : "Collectible marked as missing."
          : `${uniqueCollectibleEntryIds.length} collectible entries updated.`,
      status: "success",
    };
  } catch (error) {
    return {
      message:
        error instanceof Error
          ? error.message
          : "Unable to update collectible progress.",
      status: "error",
    };
  }
};

export const updateCollectibleEntryProgress = async ({
  collectibleEntryId,
  isCollected,
  playId,
}: {
  collectibleEntryId: number;
  isCollected: boolean;
  playId: string;
}): Promise<CollectibleProgressActionResult> =>
  updateCollectibleEntryProgressBatch({
    collectibleEntryIds: [collectibleEntryId],
    isCollected,
    playId,
  });

export const updateCollectibleEntryProgressBulk = async ({
  collectibleEntryIds,
  isCollected,
  playId,
}: {
  collectibleEntryIds: number[];
  isCollected: boolean;
  playId: string;
}): Promise<CollectibleProgressActionResult> =>
  updateCollectibleEntryProgressBatch({
    collectibleEntryIds,
    isCollected,
    playId,
  });
