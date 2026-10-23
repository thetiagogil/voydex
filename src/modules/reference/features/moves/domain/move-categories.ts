export type MoveCategorySlug = "physical" | "special" | "status";

const moveCategoryLabels: Record<MoveCategorySlug, string> = {
  physical: "Physical",
  special: "Special",
  status: "Status",
};

/* A move's category from its stored damage class; null when unknown. */
export const getMoveCategory = (damageClass: string | null | undefined) => {
  const slug = damageClass?.toLowerCase();

  return slug && slug in moveCategoryLabels
    ? {
        label: moveCategoryLabels[slug as MoveCategorySlug],
        slug: slug as MoveCategorySlug,
      }
    : null;
};
