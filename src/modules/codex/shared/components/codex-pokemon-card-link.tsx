import Link from "next/link";
import { memo, type ReactNode } from "react";

import {
  PokemonCard,
  type PokemonCardSize,
} from "@/modules/reference/features/pokemon/components/pokemon-card";
import { cn } from "@/shared/utils/cn";
import { IconTip } from "@/shared/components/icon-tip";

type CodexPokemonCardType = { name: string; slug: string };

type CodexPokemonCardLinkProps = {
  /*
   * What the link adds after the card's own words, read but not seen, such
   * as "in Sword and Shield": its name always starts with what it shows.
   */
  detail?: string;
  href: string;
  imageUrl: string | null;
  name: string;
  number: string;
  /* `md` in a list; `sm` where three share a narrow column. */
  size?: PokemonCardSize;
  /* A hover note, such as the other numbering. */
  tip?: string;
  types: (CodexPokemonCardType | null)[];
};

/*
 * A Pokémon in a Codex list: the one Pokémon card, plain (nothing here is
 * owned), opening the Pokémon's entry. The card's text names the link, so the
 * art is decorative. Cards off screen skip rendering until reached.
 */
export const CodexPokemonCardLink = memo(
  ({
    detail,
    href,
    imageUrl,
    name,
    number,
    size = "md",
    tip,
    types,
  }: CodexPokemonCardLinkProps) => {
    return (
      <IconTip
        label={tip}
        trigger={
          <Link href={href} className="block h-full min-w-0 rounded-lg">
            <PokemonCard
              state="plain"
              className={cn(
                "[content-visibility:auto]",
                size === "sm"
                  ? "[contain-intrinsic-size:auto_112px_auto_140px]"
                  : "[contain-intrinsic-size:auto_128px_auto_172px]",
              )}
              imageAlt=""
              imageUrl={imageUrl}
              name={name}
              number={number}
              size={size}
              types={types.filter((type) => type !== null)}
            />
            {detail ? <span className="sr-only">, {detail}</span> : null}
          </Link>
        }
      />
    );
  },
);

CodexPokemonCardLink.displayName = "CodexPokemonCardLink";

/* Three cards across on phones; on wider screens as many 128px columns as fit. */
export const CodexPokemonGrid = ({
  children,
  className,
}: {
  children: ReactNode;
  className?: string;
}) => {
  return (
    <div
      className={cn(
        "grid min-w-0 grid-cols-3 gap-2 sm:grid-cols-[repeat(auto-fill,minmax(128px,1fr))] sm:gap-3",
        className,
      )}
    >
      {children}
    </div>
  );
};
