/*
 * The fixed roles a planned Pokémon can take, as `planning.mainline_team_plan_roles`
 * seeds them: a Plan saves the slug, the Planner shows the name. Anything
 * more particular goes in the Pokémon's note.
 */
export const planRoles = [
  { name: "Lead", slug: "lead" },
  { name: "Physical attacker", slug: "physical-attacker" },
  { name: "Special attacker", slug: "special-attacker" },
  { name: "Wall", slug: "wall" },
  { name: "Pivot", slug: "pivot" },
  { name: "Sweeper", slug: "sweeper" },
  { name: "Support", slug: "support" },
] as const;

export type PlanRoleSlug = (typeof planRoles)[number]["slug"];

const toKey = (text: string) => text.trim().toLowerCase().replace(/\s+/g, "-");

/*
 * A role read from outside (a share link, which older links wrote by name):
 * its slug when it's one of the fixed roles, otherwise null.
 */
export const toPlanRoleSlug = (value: unknown): PlanRoleSlug | null => {
  if (typeof value !== "string") return null;

  const key = toKey(value);

  return planRoles.find((role) => role.slug === key)?.slug ?? null;
};

/* The name a role shows, such as "Wall"; null for none. */
export const getPlanRoleName = (slug: string | null) =>
  planRoles.find((role) => role.slug === slug)?.name ?? null;
