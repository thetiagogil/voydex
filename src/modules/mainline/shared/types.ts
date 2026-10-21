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
