import type { CSSProperties, ReactNode } from "react";

import type { PublicArt } from "@/config/public-art";
import { MeadowPop } from "@/features/site/components/meadow-pop";
import { PokemonRender } from "@/features/site/components/pokemon-render";
import { meadowPartners } from "@/features/site/data/meadow-partners";
import { cn } from "@/shared/utils/cn";

const hillShape = "rounded-[50%_50%_0_0/100%_100%_0_0]";

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

type MeadowCardProps = {
  art: PublicArt;
  children: ReactNode;
  /*
   * `band` is Home's: edge to edge from the top of the page, under the bar,
   * rounded only at the bottom and ending on a strip of ground. `card` is the
   * Intro's closing meadow, a rounded card ending on the front hill.
   */
  form?: "band" | "card";
  /* Above the fold the partners load straight away. */
  loading?: "eager" | "lazy";
  titleId: string;
};

/*
 * The meadow: a front door's one loud thing. The copy sits on the sky, and
 * one first partner per generation stands on the hill below it, popping in
 * once per visit.
 */
export const MeadowCard = ({
  art,
  children,
  form = "card",
  loading = "lazy",
  titleId,
}: MeadowCardProps) => {
  const ground = form === "band";

  return (
    <section
      aria-labelledby={titleId}
      className={cn(
        "bg-sky relative isolate overflow-hidden text-center",
        ground
          ? "-mt-15 rounded-b-[32px] pt-15 sm:rounded-b-[56px] lg:-mt-17 lg:pt-17"
          : "rounded-xl sm:rounded-2xl",
      )}
    >
      <div
        className={cn(
          "relative z-6 mx-auto flex w-full flex-col items-center px-4.5 sm:px-8",
          ground && "max-w-320 px-4 sm:px-6 lg:px-8",
        )}
      >
        {children}
      </div>
      <div
        aria-hidden
        className={cn("relative sm:h-[206px]", ground ? "h-40" : "h-[150px]")}
      >
        <span
          className={cn(
            "bg-hill absolute inset-x-[-14%] bottom-0 z-1 h-28 sm:h-[150px]",
            hillShape,
          )}
        />
        <span
          className={cn(
            "bg-hill-2 absolute inset-x-[-24%] bottom-0 z-4 h-11 sm:h-[58px]",
            hillShape,
          )}
        />
        <MeadowPop className="group/meadow absolute bottom-4 left-1/2 z-5 flex w-[780px] -translate-x-1/2 items-end justify-between sm:bottom-[22px] sm:w-[1100px]">
          {meadowPartners.map((partner, index) => (
            <span
              key={partner.sprite_slug}
              style={getPartnerStyle(index, partner.scale)}
              className="relative isolate grid h-[110px] w-20 translate-y-[calc(var(--y)*0.6)] items-end justify-items-center sm:h-[150px] sm:w-[118px] sm:translate-y-(--y)"
            >
              <span className="absolute bottom-0.5 left-1/2 -z-1 h-3 w-[62px] -translate-x-1/2 rounded-full bg-[radial-gradient(closest-side,color-mix(in_oklab,var(--ink)_24%,transparent),transparent)] sm:bottom-[3px] sm:h-4 sm:w-[88px]" />
              <PokemonRender
                art={art}
                pokemon={partner}
                loading={loading}
                className="group-data-pop/meadow:animate-meadow-pop size-[calc(92px*var(--s))] [animation-delay:calc(var(--i)*70ms)] motion-reduce:animate-none sm:size-[calc(132px*var(--s))]"
              />
            </span>
          ))}
        </MeadowPop>
      </div>
      {ground ? (
        <div aria-hidden className="bg-hill-2 relative z-6 h-7 sm:h-[34px]" />
      ) : null}
    </section>
  );
};
