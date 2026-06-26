import { createServerSupabaseClient } from "@/lib/supabase/server";

export type ServerSupabaseClient = Awaited<
  ReturnType<typeof createServerSupabaseClient>
>;

export const byId = <
  T extends {
    id: number;
  },
>(
  rows: T[],
): Map<number, T> => {
  return new Map(rows.map((row) => [row.id, row]));
};

export const uniqueNumberIds = (values: Array<number | null>): number[] => {
  return Array.from(
    new Set(
      values.filter((value): value is number => typeof value === "number"),
    ),
  );
};

export const isUuid = (value: string): boolean => {
  return /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(value);
};
