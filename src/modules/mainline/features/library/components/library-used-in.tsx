import type { LibraryPlay } from "@/modules/mainline/features/library/types";
import { PlayTeamList } from "@/modules/mainline/shared/components/play-team-list";
import { SheetSection } from "@/shared/components/sheet-section";

/*
 * The Plays that keep a rule or wear a tag, as one part of its sheet, shown
 * as the Team Planner's See Plays shows a Plan's: each a card with its name
 * and team that opens the Play, or a line saying none do yet.
 */
export const LibraryUsedIn = ({ plays }: { plays: LibraryPlay[] }) => (
  <SheetSection
    title="Used in"
    aside={
      plays.length
        ? `${plays.length} ${plays.length === 1 ? "Play" : "Plays"}`
        : undefined
    }
  >
    {plays.length ? (
      <PlayTeamList plays={plays} />
    ) : (
      <p className="text-ink-3 text-14 font-semibold">No Play uses it yet.</p>
    )}
  </SheetSection>
);
