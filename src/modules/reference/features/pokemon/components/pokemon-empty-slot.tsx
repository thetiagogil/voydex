import { dropTargetRingClassName } from "@/modules/reference/features/pokemon/components/drop-target-ring";
import {
  collectorCardSizeClassNames,
  type PokemonCollectorCardSize,
} from "@/modules/reference/features/pokemon/components/pokemon-collector-card";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { IconDisc } from "@/shared/components/icon-disc";
import { Link } from "@/shared/components/link";
import { cn } from "@/shared/utils/cn";

/*
 * An open slot: the dashed tile where one of your Pokémon would stand (a
 * team slot, a Plan's slot). It stands exactly as tall as the
 * `PokemonCollectorCard` beside it, so a row is the same height empty as
 * full. With `href` it is a link that fills the slot (its words name it);
 * `ring` puts the plus ring over the words.
 */
export const PokemonEmptySlot = ({
  className,
  href,
  label,
  ring = false,
  showTypes = true,
  size = "lg",
  target = false,
  text = "Open slot",
}: {
  className?: string;
  href?: string;
  /* The slot's name when it is a picture, not a link. */
  label: string;
  ring?: boolean;
  /* Off beside cards that show no types (`showTypes={false}`). */
  showTypes?: boolean;
  /* The size of the cards it sits among. */
  size?: PokemonCollectorCardSize;
  /* Marked as where a dragged Pokémon would land: the accent ring. */
  target?: boolean;
  /* What it says inside; "Open slot" unless the slot means something else. */
  text?: string;
}) => {
  const sizeClassName = collectorCardSizeClassNames[size];
  /*
   * The dashed line and the padding add up to the card's frame, so both
   * step up to their full form at the same width.
   */
  const slotClassName = cn(
    "empty-slot text-ink-3 copy-note @container/collector relative block h-full w-full min-w-0 rounded-lg p-[3.5px]",
    target && dropTargetRingClassName,
    className,
  );
  const body = (
    <>
      {/*
       * The card's own parts, unseen: its face, window, name and types. A
       * top line adds no height: it sits over the window.
       */}
      <span aria-hidden className="invisible block p-2">
        <span className={cn("block", sizeClassName.window)} />
        <span
          className={cn(
            "descender-room mt-2 block leading-tight",
            sizeClassName.name,
          )}
        >
          {"\u00a0"}
        </span>
        {showTypes ? (
          <span className={cn("mt-1.5 block", sizeClassName.typesLine)} />
        ) : null}
      </span>
      <span className="absolute inset-0 flex flex-col items-center justify-center gap-3 px-2 text-center">
        {ring ? (
          <IconDisc size="xl">
            <AppIcon icon={appIcons.actions.create} size="md" />
          </IconDisc>
        ) : null}
        {text}
      </span>
    </>
  );

  return href ? (
    <Link
      href={href}
      className={cn(slotClassName, "hover:text-ink-2 transition-colors")}
    >
      {body}
    </Link>
  ) : (
    <div role="img" aria-label={label} className={slotClassName}>
      {body}
    </div>
  );
};
