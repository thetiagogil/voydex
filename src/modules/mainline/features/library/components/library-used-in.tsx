import type { LibraryPlay } from "@/modules/mainline/features/library/types";
import { PlayTeamList } from "@/modules/mainline/shared/components/play-team-list";

/*
 * The Plays that keep a rule or wear a tag, as the Team Planner's See Plays
 * shows a Plan's: each a card with its name and team that opens the Play,
 * or a line saying none do yet.
 */
export const LibraryUsedIn = ({ plays }: { plays: LibraryPlay[] }) => (
  <section aria-label="Used in" className="grid gap-2">
    <h3 className="text-13 text-ink-2 font-bold">Used in</h3>
    {plays.length ? (
      <PlayTeamList plays={plays} />
    ) : (
      <p className="text-ink-3 text-14 font-semibold">No Play uses it yet.</p>
    )}
  </section>
);
