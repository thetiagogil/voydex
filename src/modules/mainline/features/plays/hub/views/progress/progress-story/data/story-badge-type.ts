import type { Json } from "@/shared/types/database.types";

/* A gym milestone's badge: the type of the first badge it refers to. */
export const getStoryBadgeTypeId = (badgeRefs: Json | null): number | null => {
  if (!Array.isArray(badgeRefs)) {
    return null;
  }

  for (const ref of badgeRefs) {
    if (
      ref &&
      typeof ref === "object" &&
      !Array.isArray(ref) &&
      typeof ref.type_id === "number"
    ) {
      return ref.type_id;
    }
  }

  return null;
};
