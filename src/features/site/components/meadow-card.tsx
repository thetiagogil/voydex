import type { CSSProperties, ReactNode } from "react";

import type { PublicArt } from "@/config/public-art";
import { MeadowPartners } from "@/features/site/components/meadow-partners";
import { MeadowScene } from "@/shared/components/meadow-scene";
import { cn } from "@/shared/utils/cn";

type MeadowCardProps = {
  art: PublicArt;
  children: ReactNode;
  /*
   * `band` is Home's and Start a Play's: it opens the page, edge to edge
   * under the bar, rounded only at the bottom and ending on a strip of
   * ground. `card` is the Intro's closing meadow, a rounded card ending on
   * the front hill.
   */
  form?: "band" | "card";
  /*
   * A picked game's colour (`getGameColourStyle`): the sky takes its soft
   * tint and the hills lean towards it, as on Start a Play once a game is
   * picked. Here the game is the page's subject.
   */
  gameStyle?: CSSProperties;
  /* What stands on the band's ground strip, such as Start a Play's line and button. */
  ground?: ReactNode;
  /* Above the fold the partners load straight away. */
  loading?: "eager" | "lazy";
  /*
   * The partners open Start a Play at their generation (v3: tapping one
   * jumps the shelf there); elsewhere they just stand on the hill.
   */
  partnersOpenStart?: boolean;
  /* Stands on the hill instead of the first partners, such as a game's starters. */
  scene?: ReactNode;
  titleId: string;
};

/*
 * The site's meadow, on the shared `MeadowScene`: a front door's one loud
 * thing. The copy sits on the sky, and one first partner per generation
 * stands on the hill below it, popping in once per visit.
 */
export const MeadowCard = ({
  art,
  children,
  form = "card",
  gameStyle,
  ground,
  loading = "lazy",
  partnersOpenStart = false,
  scene,
  titleId,
}: MeadowCardProps) => {
  const band = form === "band";

  return (
    <section aria-labelledby={titleId}>
      <MeadowScene
        form={form}
        tinted={Boolean(gameStyle)}
        style={gameStyle}
        className={cn(
          "text-center transition-colors",
          gameStyle && "game-scope",
        )}
        sceneClassName={cn("sm:h-[206px]", band ? "h-40" : "h-[150px]")}
        cast={
          scene ?? (
            <MeadowPartners
              art={art}
              loading={loading}
              openStart={partnersOpenStart}
            />
          )
        }
        ground={ground}
      >
        <div
          className={cn(
            "flex w-full flex-col items-center",
            band ? "px-(--page-gutter)" : "px-4.5 sm:px-8",
          )}
        >
          {children}
        </div>
      </MeadowScene>
    </section>
  );
};
