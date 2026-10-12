import Link from "next/link";
import type { ReactNode } from "react";

import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

type StickerType = { name: string; slug: string };

type PokemonStickerProps = {
  className?: string;
  href?: string;
  imageUrl: string | null;
  level?: number | null;
  name: string;
  /* Shown under the name when it differs, such as the species of a nicknamed Pokémon. */
  subtitle?: string | null;
  types: StickerType[];
};

/*
 * A sticker is for a Pokémon you own, and only those: type-tinted, a 4px
 * white border and a lip tinted by its type. Its art hops on hover.
 */
export const PokemonSticker = ({
  className,
  href,
  imageUrl,
  level,
  name,
  subtitle,
  types,
}: PokemonStickerProps) => {
  const primaryType = types.find((type) => isPokemonTypeSlug(type.slug));
  const style = getPokemonTypeCssVariables(
    (primaryType?.slug as PokemonTypeSlug | undefined) ?? null,
  );
  const stickerClassName = cn(
    "group/sticker type-tint relative flex min-w-0 flex-col items-center rounded-xl border-4 border-white px-2.5 pt-3 pb-4 text-center shadow-[0_5px_0_color-mix(in_oklab,var(--t)_38%,var(--lip)),var(--shadow-soft-value)] transition-transform duration-150 hover:-translate-y-[3px]",
    className,
  );
  const content: ReactNode = (
    <>
      <span className="relative grid place-items-center">
        {imageUrl ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img
            src={imageUrl}
            alt=""
            className="size-[108px] transition-transform duration-250 ease-[cubic-bezier(.3,1.6,.5,1)] group-hover/sticker:-translate-y-2 group-hover/sticker:scale-[1.03] sm:size-[132px]"
          />
        ) : (
          <span className="border-dash size-[108px] rounded-full border-[1.5px] border-dashed sm:size-[132px]" />
        )}
      </span>
      <span className="font-display mt-2 w-full truncate text-[18px] leading-tight font-semibold">
        {name}
      </span>
      <span className="text-ink-3 text-13 w-full truncate font-semibold">
        {subtitle ?? " "}
      </span>
      <span className="text-ink-2 text-13 mt-2 flex items-center justify-center gap-1.5 font-bold">
        {level ? (
          <span className="rounded-full bg-white px-2 py-0.5 tabular-nums">
            Lv. {level}
          </span>
        ) : null}
        {types.map((type) =>
          isPokemonTypeSlug(type.slug) ? (
            <PokemonTypeBadge
              key={type.slug}
              type={type.slug}
              label={type.name}
              display="icon"
            />
          ) : null,
        )}
      </span>
    </>
  );

  if (href) {
    return (
      <Link href={href} style={style} className={stickerClassName}>
        {content}
      </Link>
    );
  }

  return (
    <article style={style} className={stickerClassName}>
      {content}
    </article>
  );
};

/* An open slot: the dashed tile used for anything missing or not yet yours. */
export const PokemonEmptySlot = ({
  className,
  label,
}: {
  className?: string;
  label: string;
}) => {
  return (
    <div
      role="img"
      aria-label={label}
      className={cn(
        "border-dash text-ink-3 flex min-h-[212px] min-w-0 flex-col items-center justify-center gap-3 rounded-xl border-[3px] border-dashed text-[13.5px] font-bold",
        className,
      )}
    >
      Open slot
    </div>
  );
};
