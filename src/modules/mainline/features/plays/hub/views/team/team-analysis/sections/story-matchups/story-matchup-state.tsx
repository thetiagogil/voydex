import { AppIcon, appIcons } from "@/shared/components/app-icon";
import type { StatusBadgeTone } from "@/shared/components/status-badge";
import { cn } from "@/shared/utils/cn";

import type { MatchupState } from "../../data/story-battle-reading";

/*
 * The three readings and their words: a battle's verdict, one of your
 * Pokémon's role, the levels. One icon each (v3 `MATCHUP_STATES`), so the
 * same reading never gets two glyphs.
 */
export const matchupStates = {
  balanced: {
    alert: "default",
    icon: appIcons.matchup.balanced,
    label: "Balanced",
    role: "Even",
    text: "text-ink-2",
    tone: "neutral",
  },
  challenging: {
    alert: "destructive",
    icon: appIcons.matchup.challenging,
    label: "Challenging",
    role: "At risk",
    text: "text-danger-deep",
    tone: "danger",
  },
  strong: {
    alert: "success",
    icon: appIcons.matchup.strong,
    label: "Strong",
    role: "Advantage",
    text: "text-ok-deep",
    tone: "ok",
  },
} as const satisfies Record<
  MatchupState,
  {
    alert: "default" | "destructive" | "success";
    icon: (typeof appIcons.matchup)[MatchupState];
    label: string;
    role: string;
    text: string;
    tone: StatusBadgeTone;
  }
>;

/* A reading as its icon and a word, in its colour: a role, the levels. */
export const MatchupStateLabel = ({
  children,
  className,
  state,
}: {
  children: React.ReactNode;
  className?: string;
  state: MatchupState;
}) => (
  <span
    className={cn(
      "inline-flex items-center gap-1.5 font-extrabold",
      matchupStates[state].text,
      className,
    )}
  >
    <AppIcon icon={matchupStates[state].icon} className="size-4 shrink-0" />
    {children}
  </span>
);
