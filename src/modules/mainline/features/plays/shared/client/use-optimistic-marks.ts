"use client";

import { useCallback, useState } from "react";
import { toast } from "sonner";

/* What a progress Server Action answers. */
export type OptimisticMarkResult = {
  message: string;
  status: "error" | "success";
};

type MarkParams<TValue> = {
  /* Said when the save fails without a message of its own. */
  fallbackError: string;
  /* The values to show at once, by id. */
  next: ReadonlyMap<number, TValue>;
  /* The values to put back if the save fails, by id. */
  previous: ReadonlyMap<number, TValue>;
  save: () => Promise<OptimisticMarkResult>;
};

const withValues = <TValue>(
  current: Map<number, TValue>,
  values: ReadonlyMap<number, TValue>,
) => {
  const next = new Map(current);

  for (const [id, value] of values) {
    next.set(id, value);
  }

  return next;
};

const withIds = (
  current: Set<number>,
  ids: Iterable<number>,
  pending: boolean,
) => {
  const next = new Set(current);

  for (const id of ids) {
    if (pending) {
      next.add(id);
    } else {
      next.delete(id);
    }
  }

  return next;
};

/*
 * The one optimistic marking flow, for the Pokédex and Collectibles: a mark
 * shows at once while it saves; a failed save puts the previous values back
 * and says why. `mark` reads no render state, so a toast's Undo can call it
 * after later renders. It resolves to the saved result, or null on failure.
 */
export const useOptimisticMarks = <TValue>(
  createInitialValues: () => Map<number, TValue>,
) => {
  const [valueById, setValueById] = useState(createInitialValues);
  const [pendingIds, setPendingIds] = useState(() => new Set<number>());

  const mark = useCallback(
    async ({
      fallbackError,
      next,
      previous,
      save,
    }: MarkParams<TValue>): Promise<OptimisticMarkResult | null> => {
      const ids = [...next.keys()];

      setValueById((current) => withValues(current, next));
      setPendingIds((current) => withIds(current, ids, true));

      try {
        const result = await save();

        if (result.status === "error") {
          throw new Error(result.message);
        }

        return result;
      } catch (error) {
        setValueById((current) => withValues(current, previous));
        toast.error(error instanceof Error ? error.message : fallbackError);

        return null;
      } finally {
        setPendingIds((current) => withIds(current, ids, false));
      }
    },
    [],
  );

  const isPending = useCallback(
    (id: number) => pendingIds.has(id),
    [pendingIds],
  );

  return { isPending, mark, pendingIds, valueById };
};
