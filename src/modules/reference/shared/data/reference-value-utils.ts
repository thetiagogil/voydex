import { byId } from "@/shared/utils/collections";

export { byId };

export const normalizeSearchQuery = (query?: string | null): string => {
  return query?.trim() ?? "";
};

export const normalizeSlug = (value?: string | null): string => {
  return value?.trim().toLowerCase() ?? "";
};

export const isNumber = (value: number | null | undefined): value is number => {
  return typeof value === "number";
};
