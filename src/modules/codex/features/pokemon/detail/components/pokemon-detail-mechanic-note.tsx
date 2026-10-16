import Link from "next/link";

import type { PokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { formatGenerationName } from "@/modules/reference/features/games/utils/game-display";

type PokemonDetailMechanicNoteCardProps = {
  /* The entry in the generation it arrives in, when the Pokémon is there. */
  arrivesHref?: string | null;
  note: PokemonDetailMechanicNote;
};

/*
 * In place of something the game doesn't have: a calm panel with an
 * hourglass and the fact ("Abilities arrive in Generation III"), and a link
 * to read the entry in that generation. Calm, not dashed: it is the game's
 * history, not data Voydex is missing.
 */
export const PokemonDetailMechanicNoteCard = ({
  arrivesHref,
  note,
}: PokemonDetailMechanicNoteCardProps) => {
  return (
    <div className="bg-calm-soft text-calm-ink flex items-center gap-3 rounded-lg px-4 py-3.5">
      <span className="bg-surface grid size-9 shrink-0 place-items-center rounded-full">
        <AppIcon icon={appIcons.status.later} size="sm" aria-hidden />
      </span>
      <span className="flex min-w-0 flex-col gap-0.5">
        <span className="text-14 font-extrabold">{note.text}</span>
        {note.arrivesIn && arrivesHref ? (
          <Link
            href={arrivesHref}
            className="text-13 focus-visible:outline-focus w-fit rounded-xs font-bold underline-offset-4 hover:underline focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
          >
            See it in {formatGenerationName(note.arrivesIn)}
          </Link>
        ) : null}
      </span>
    </div>
  );
};
