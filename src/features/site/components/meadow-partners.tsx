import Link from "next/link";
import type { CSSProperties } from "react";

import type { PublicArt } from "@/config/public-art";
import { getStartPlayHref } from "@/config/start-intent";
import { MeadowPop } from "@/features/site/components/meadow-pop";
import { PokemonRender } from "@/features/site/components/pokemon-render";
import { meadowPartners } from "@/features/site/data/meadow-partners";
import { cn } from "@/shared/utils/cn";

const romanNumerals = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];

/* The partners stand along a gentle arc: the middle of the row a little higher up the hill. */
const getPartnerStyle = (index: number, scale = 1): CSSProperties => {
  const middle = (meadowPartners.length - 1) / 2;
  const offset = (index - middle) / middle;

  return {
    "--i": index,
    "--s": scale,
    "--y": `${-Math.round(16 * (1 - offset * offset))}px`,
  } as CSSProperties;
};

type MeadowPartnersProps = {
  art: PublicArt;
  loading: "eager" | "lazy";
  /* Each partner opens Start a Play at its generation. */
  openStart: boolean;
};

/*
 * One first partner per generation along the hill. Where they open Start a
 * Play, phones get a row you can swipe (v3), so no partner sits out of reach
 * past the edge; elsewhere they are decoration, wider than the screen.
 */
export const MeadowPartners = ({
  art,
  loading,
  openStart,
}: MeadowPartnersProps) => {
  const partnerClassName =
    "relative isolate grid h-27.5 w-20 shrink-0 translate-y-[calc(var(--y)*0.6)] items-end justify-items-center sm:h-37.5 sm:w-29.5 sm:translate-y-(--y)";

  return (
    <MeadowPop
      label={openStart ? "First partners" : undefined}
      className={cn(
        "group/meadow mb-2 flex shrink-0 items-end justify-between sm:mb-3.5 sm:w-275",
        openStart
          ? "no-scrollbar w-full snap-x snap-proximity justify-start overflow-x-auto overflow-y-hidden mask-[linear-gradient(90deg,transparent,black_22px,black_calc(100%-22px),transparent)] px-6 pt-7 sm:justify-between sm:overflow-visible sm:mask-none sm:p-0"
          : "w-195",
      )}
    >
      {meadowPartners.map((partner, index) => {
        const content = (
          <>
            <span className="absolute bottom-0.5 left-1/2 -z-1 h-3 w-15.5 -translate-x-1/2 rounded-full bg-[radial-gradient(closest-side,color-mix(in_oklab,var(--ink)_24%,transparent),transparent)] sm:bottom-0.75 sm:h-4 sm:w-22" />
            <PokemonRender
              art={art}
              pokemon={partner}
              loading={loading}
              className={cn(
                "group-data-pop/meadow:animate-meadow-pop size-[calc(92px*var(--s))] [animation-delay:calc(var(--i)*70ms)] motion-reduce:animate-none sm:size-[calc(132px*var(--s))]",
                openStart &&
                  "transition-transform duration-300 ease-[cubic-bezier(0.3,1.6,0.5,1)] group-hover/partner:-translate-y-3.5 motion-reduce:transition-none",
              )}
            />
          </>
        );

        return openStart ? (
          <Link
            key={partner.sprite_slug}
            href={getStartPlayHref({ generation: partner.generation })}
            data-generation={partner.generation}
            aria-label={`${partner.name}: show the Generation ${romanNumerals[partner.generation - 1]} games`}
            style={getPartnerStyle(index, partner.scale)}
            className={cn(
              partnerClassName,
              "group/partner snap-center rounded-md",
            )}
          >
            {content}
          </Link>
        ) : (
          <span
            key={partner.sprite_slug}
            style={getPartnerStyle(index, partner.scale)}
            className={partnerClassName}
          >
            {content}
          </span>
        );
      })}
    </MeadowPop>
  );
};
