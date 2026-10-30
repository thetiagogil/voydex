import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PendingData } from "@/shared/components/pending-data";
import { SheetSection } from "@/shared/components/sheet-section";
import { StatusBadge } from "@/shared/components/status-badge";

import type { StoryMatchupBattle } from "../../data/story-matchups-model";
import { matchupStates } from "../battles/story-matchup-state";

/* Where a battle stands, as one chip: won, done or the verdict on it. */
const BattleState = ({ battle }: { battle: StoryMatchupBattle }) => {
  if (battle.state === "won") {
    return (
      <StatusBadge tone="ok" dot={false}>
        <AppIcon icon={appIcons.status.active} />
        {battle.opponentKind === "legendary" ? "Done" : "Won"}
      </StatusBadge>
    );
  }

  const state = battle.reading?.state;

  if (state) {
    return (
      <StatusBadge tone={matchupStates[state].tone} dot={false}>
        <AppIcon icon={matchupStates[state].icon} />
        {battle.state === "next" ? (
          <span className="sr-only">Next, </span>
        ) : null}
        {matchupStates[state].label}
      </StatusBadge>
    );
  }

  return battle.state === "next" ? (
    <StatusBadge tone="neutral">Next</StatusBadge>
  ) : battle.party ? null : (
    /* TODO(v3-data): games without opponent teams in Voydex read no verdict. */
    <PendingData variant="inline" label="No reading" />
  );
};

/*
 * The battles at a milestone, one line each in its sheet: who you face,
 * their kind and levels, and where it stands against your team. Each opens
 * its report in the sheet, where their team and how yours reads against it
 * live.
 */
export const StoryMilestoneBattles = ({
  battles,
  onSelect,
}: {
  battles: StoryMatchupBattle[];
  onSelect: (battle: StoryMatchupBattle) => void;
}) =>
  battles.length ? (
    <SheetSection
      title={battles.length === 1 ? "The battle here" : "Battles here"}
    >
      <ul className="grid gap-2">
        {battles.map((battle) => {
          const lead = battle.party?.pokemon.at(-1) ?? null;

          return (
            <li key={battle.id}>
              <button
                type="button"
                onClick={() => onSelect(battle)}
                className="focus-ring bg-surface-2 hover:bg-hover flex min-h-14 w-full items-center gap-3 rounded-xl px-3 py-2 text-left transition-colors"
              >
                <PokemonAvatar
                  decorative
                  name={lead?.name ?? battle.name}
                  className="size-10 shrink-0"
                  imageUrl={lead?.imageUrl ?? null}
                  typeSlug={lead?.types[0]?.slug ?? null}
                />
                <span className="grid min-w-0 flex-1">
                  <b className="text-ink text-15 truncate font-extrabold">
                    {battle.name}
                  </b>
                  <span className="text-ink-3 text-13 truncate font-semibold">
                    {battle.kind}
                    {battle.partyLevels ? ` · ${battle.partyLevels}` : null}
                  </span>
                </span>
                <BattleState battle={battle} />
                <AppIcon
                  icon={appIcons.actions.next}
                  size="sm"
                  className="text-ink-3 shrink-0"
                />
              </button>
            </li>
          );
        })}
      </ul>
    </SheetSection>
  ) : null;
