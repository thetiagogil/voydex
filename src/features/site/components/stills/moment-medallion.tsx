import Image from "next/image";
import type { CSSProperties } from "react";

import { PokemonRender } from "@/features/site/components/stills/pokemon-render";
import type { SiteArt, SiteMoment } from "@/features/site/types";
import { getTypeIconSrc } from "@/features/site/utils/type-colour";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

const getMomentStyle = (moment: SiteMoment): CSSProperties => {
  switch (moment.kind) {
    case "badge": {
      const type = `var(--type-${moment.type})`;

      return {
        "--mf": type,
        "--mr": `color-mix(in oklab, ${type} 45%, white)`,
      } as CSSProperties;
    }
    case "note":
      return {
        "--mf": "var(--warn-soft)",
        "--mr": "color-mix(in oklab, var(--warn) 40%, white)",
      } as CSSProperties;
    case "pokemon": {
      const type = `var(--type-${moment.pokemon.type})`;

      return {
        "--mf": `color-mix(in oklab, ${type} 24%, var(--surface))`,
        "--mr": `color-mix(in oklab, ${type} 45%, white)`,
      } as CSSProperties;
    }
  }
};

type MomentMedallionProps = {
  art: SiteArt;
  className?: string;
  moment: SiteMoment;
  /* `lg` is the partner beside each step of the Intro's story. */
  size?: "lg" | "md";
};

/*
 * A drawing of a moment's medallion, as the Play's history wears it: a white
 * ring and a small lip around a gym badge in its type, a note in warm, or a
 * Pokémon on its type tint.
 */
export const MomentMedallion = ({
  art,
  className,
  moment,
  size = "md",
}: MomentMedallionProps) => (
  <span
    aria-hidden
    style={getMomentStyle(moment)}
    className={cn(
      "relative grid shrink-0 place-items-center rounded-full bg-(--mf) shadow-[0_0_0_3px_white,0_0_0_4.5px_var(--mr),0_3px_0_4.5px_var(--lip)]",
      size === "md" ? "m-[5px] size-[46px]" : "m-1 size-[58px] sm:size-[76px]",
      moment.kind === "pokemon" ? "overflow-visible" : "overflow-hidden",
      moment.kind === "note" && "text-warn-ink",
      className,
    )}
  >
    {moment.kind === "badge" ? (
      <Image
        src={getTypeIconSrc(moment.type)}
        alt=""
        width={24}
        height={24}
        className="size-[48%] brightness-0 invert"
      />
    ) : moment.kind === "note" ? (
      <AppIcon icon={appIcons.actions.edit} className="size-5" />
    ) : (
      <PokemonRender
        art={art}
        pokemon={moment.pokemon}
        className={
          size === "md"
            ? "size-[58px]"
            : "size-[66px] -translate-y-1 sm:size-[88px]"
        }
      />
    )}
  </span>
);
