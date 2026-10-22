/* Short names for the common ways a move is learned; others keep their own. */
const learnMethodLabels: Record<string, string> = {
  egg: "Egg",
  hm: "HM",
  level_up: "Level up",
  tm: "TM",
  tutor: "Tutor",
};

/* Learned on evolving: "Evo.", as learnset tables write it. */
const evolutionLabel = "Evo.";

/* A learn method as lists and filters name it: "Level up", "TM", "Egg". */
export const getLearnMethodLabel = (
  slug: string | null | undefined,
  name: string | null | undefined,
) => (slug ? learnMethodLabels[slug] : undefined) ?? name ?? "Unknown";

/*
 * How one move is learned, short enough for a narrow column: "Lv. 12",
 * "TM 08", "Evo.", or the method's own label ("Egg", "Tutor").
 */
export const formatLearnMethodDetail = ({
  level,
  machineLabel,
  name,
  slug,
}: {
  level: number | null | undefined;
  machineLabel: string | null | undefined;
  name: string | null | undefined;
  slug: string | null | undefined;
}) => {
  if (slug === "level_up" && level !== null && level !== undefined) {
    return level === 0 ? evolutionLabel : `Lv. ${level}`;
  }

  const machine = machineLabel
    ?.replace(/\s+/g, "")
    .replace(/^([A-Z]+)(\d)/, "$1 $2");

  if (machine) {
    return machine;
  }

  return slug === "evolution"
    ? evolutionLabel
    : getLearnMethodLabel(slug, name);
};
