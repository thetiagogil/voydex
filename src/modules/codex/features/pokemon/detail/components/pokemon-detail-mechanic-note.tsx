import Link from "next/link";

import type { PokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import { formatGenerationName } from "@/modules/reference/features/games/utils/game-display";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type PokemonDetailMechanicNoteCardProps = {
  /* The entry in the generation it arrives in, when the Pokémon is there. */
  arrivesHref?: string | null;
  className?: string;
  /* `fill` takes the whole of its card, centred; `row` sits among facts. */
  layout?: "fill" | "row";
  note: PokemonDetailMechanicNote;
};

/*
 * In place of something the game doesn't have: an hourglass and the fact
 * ("Abilities arrive in Generation III"), with a link to read the entry in
 * that generation. On the card's own inset fill, like the rest of the Codex:
 * the game's history needs no colour of its own, and it never wears the
 * dashed marker, which means data Voydex is missing.
 */
export const PokemonDetailMechanicNoteCard = ({
  arrivesHref,
  className,
  layout = "row",
  note,
}: PokemonDetailMechanicNoteCardProps) => {
  const isFill = layout === "fill";

  return (
    <div
      className={cn(
        "bg-surface-2 text-ink-2 flex gap-3 rounded-lg px-4 py-3.5",
        isFill
          ? "flex-1 flex-col items-center justify-center py-8 text-center"
          : "items-center",
        className,
      )}
    >
      <span
        className={cn(
          "bg-surface text-ink-2 grid shrink-0 place-items-center rounded-full",
          isFill ? "size-12" : "size-9",
        )}
      >
        <AppIcon
          icon={appIcons.status.later}
          size={isFill ? "lg" : "sm"}
          aria-hidden
        />
      </span>
      <span
        className={cn(
          "flex min-w-0 flex-col gap-0.5",
          isFill && "items-center",
        )}
      >
        <span className="text-ink text-15 font-extrabold">{note.text}</span>
        {note.arrivesIn && arrivesHref ? (
          <Link
            href={arrivesHref}
            className="text-link text-14 focus-visible:outline-focus w-fit rounded-xs font-bold underline-offset-4 hover:underline focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
          >
            See it in {formatGenerationName(note.arrivesIn)}
          </Link>
        ) : null}
      </span>
    </div>
  );
};
