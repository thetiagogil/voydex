import type { TeamStripMember } from "@/modules/mainline/shared/components/team-strip";

/*
 * A rule or tag by name, as pickers and Library cards list it. A picker's
 * chip can add a few words after the name (`detail`, such as Monotype's
 * type) and open the choice's options (`hasOptions`).
 */
/* A Play by name with its current team, as a list of Plays shows it. */
export type PlayTeam = {
  members: TeamStripMember[];
  playId: string;
  playName: string;
};

/* Plays with their teams, as a Server Action reads them for a dialog. */
export type PlayTeamsResult =
  | { plays: PlayTeam[]; status: "success" }
  | { message: string; status: "error" };

export type LibraryChoice = {
  description?: string | null;
  detail?: string | null;
  hasOptions?: boolean;
  id: string;
  /* Its options wait on a pick before it can be kept (Monotype's type). */
  needsOptions?: boolean;
  name: string;
};

/* The build choices the roster editor and the Team Planner read, as their pickers list them. */
export type BuildOption = { id: number; name: string };

/* A held item with the category the list groups it under, in the database's own order. */
export type BuildItemOption = BuildOption & {
  category: string;
  categoryOrder: number;
  /* What a held item does; balls have none. */
  effect: string | null;
  /* For its sprite. */
  slug: string;
};

export type BuildMoveOption = BuildOption & {
  damageClass: string | null;
  /* What the move does, as of the generation. */
  effect: string | null;
  /* How it learns it here, for grouping the picker; null when unknown. */
  learn: MoveLearnMethod | null;
  typeName: string | null;
  typeSlug: string | null;
};

/*
 * How a form learns a move in a version group, its first way by the methods'
 * own order: the group ("Level up", "TM"), the row's detail ("Lv. 12",
 * "TM 08") and the order within the group (level, then machine number).
 */
export type MoveLearnMethod = {
  detail: string;
  label: string;
  methodOrder: number;
  order: number;
};
