import { byId } from "@/shared/utils/collections";

export { byId };

export const byNullableId = <
  T extends {
    id: number;
  },
>(
  rows: T[],
): Map<number, T> => {
  return byId(rows);
};

export const normalizeSearchQuery = (query?: string | null): string => {
  return query?.trim() ?? "";
};

export const normalizeSlug = (value?: string | null): string => {
  return value?.trim().toLowerCase() ?? "";
};

export const resolveReferenceFilter = <
  T extends {
    id: number;
    slug: string;
  },
>(
  rows: T[],
  value: string,
) => {
  return rows.find((row) => row.slug === value || String(row.id) === value);
};

export const isNumber = (value: number | null | undefined): value is number => {
  return typeof value === "number";
};
