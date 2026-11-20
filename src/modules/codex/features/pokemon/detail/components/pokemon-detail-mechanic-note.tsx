import { Link } from "@/shared/components/link";

import type { PokemonDetailMechanicNote } from "@/modules/codex/features/pokemon/detail/utils/pokemon-detail-mechanic-notes";
import { formatGenerationName } from "@/modules/reference/features/games/utils/game-display";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

type PokemonDetailMechanicNoteCardProps = {
  /* The entry in the generation it arrives in, when the Pokémon is there. */
  arrivesHref?: string | null;
  className?: string;
  note: PokemonDetailMechanicNote;
};

/*
 * In place of something the game doesn't have, as one compact row: an
 * hourglass, the fact
 * ("Abilities arrive in") and, on its own line, the generation it arrives
 * in. When the Pokémon is in that generation the whole panel is the link
 * there, outlined like every row you can open, its arrow saying so;
 * otherwise it sits on the card's inset fill. Never the dashed marker, which
 * means data Voydex is missing.
 */
export const PokemonDetailMechanicNoteCard = ({
  arrivesHref,
  className,
  note,
}: PokemonDetailMechanicNoteCardProps) => {
  const href = note.arrivesIn ? arrivesHref : null;
  const panelClassName = cn(
    /* A panel that leads somewhere is a row you can open, outlined. */
    href ? "tile-link focus-ring" : "tile",
    "text-ink-2 flex items-center gap-3",
    className,
  );
  const content = (
    <>
      <span
        className={cn(
          "text-ink-2 grid size-9 shrink-0 place-items-center rounded-full",
          href ? "bg-surface-2" : "bg-surface",
        )}
      >
        <AppIcon icon={appIcons.status.later} size="sm" aria-hidden />
      </span>
      <span className="flex min-w-0 flex-col gap-0.5">
        <span className="copy-note">
          {note.arrivesIn ? `${note.text}:` : note.text}
        </span>
        {note.arrivesIn ? (
          <span
            className={cn(
              "copy-strong text-ink inline-flex items-center gap-1",
              href && "text-link",
            )}
          >
            {formatGenerationName(note.arrivesIn)}
            {href ? (
              <AppIcon icon={appIcons.actions.continue} size="sm" aria-hidden />
            ) : null}
          </span>
        ) : null}
      </span>
    </>
  );

  return href ? (
    <Link href={href} className={panelClassName}>
      {content}
    </Link>
  ) : (
    <div className={panelClassName}>{content}</div>
  );
};
