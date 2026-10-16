import type { CSSProperties, ReactNode } from "react";

import { BandTintRoot } from "@/shared/components/band-tint-root";
import { cn } from "@/shared/utils/cn";

const hillShape = "rounded-[50%_50%_0_0/100%_100%_0_0]";

type MeadowSceneProps = {
  /*
   * The row on the ground under the hills: what's picked and the main
   * button. Without one, a band still ends on a strip of ground.
   */
  ground?: ReactNode;
  /* Who stands on the hill, bottom-aligned in the scene. */
  cast?: ReactNode;
  className?: string;
  /*
   * `band` opens a page (Mainline Home, the site's Home and Start a Play): it
   * runs edge to edge under the top bar (`page-band`), rounds only at the
   * bottom and keeps its copy in the page column. `card` is a rounded card
   * (New Play, the Intro's closing meadow).
   */
  form?: "band" | "card";
  /* The scene's height on phones and from `sm` up. */
  sceneClassName?: string;
  style?: CSSProperties;
  /*
   * Wears the game colour (set `game-scope` and its style): the sky takes the
   * game's soft tint and the hills lean toward it. Otherwise the plain sky.
   * A tinted band also tints the top bar sitting on it (`BandTintRoot`).
   */
  tinted?: boolean;
  /* Everything on the sky above the hills: the heading, a shelf. */
  children?: ReactNode;
};

/*
 * v3's meadow (`.hh-band`, `.npx-scene`): copy on the sky, two hills, a cast
 * standing on them and a strip of ground for the action row. The meadow is a
 * page's one loud thing; what stands on it is a Play's or a game's identity.
 * It owns no motion: a cast that pops in does so itself.
 */
export const MeadowScene = ({
  cast,
  children,
  className,
  form = "card",
  ground,
  sceneClassName,
  style,
  tinted = false,
}: MeadowSceneProps) => {
  const hill = tinted
    ? "bg-[color-mix(in_oklab,var(--hill)_91%,var(--game))]"
    : "bg-hill";
  const frontHill = tinted
    ? "bg-[color-mix(in_oklab,var(--hill-2)_91%,var(--game))]"
    : "bg-hill-2";

  return (
    <div
      style={style}
      className={cn(
        "relative isolate overflow-hidden",
        tinted ? "bg-game-soft" : "bg-sky",
        form === "band"
          ? "page-band rounded-b-[32px] sm:rounded-b-[56px]"
          : "rounded-xl sm:rounded-2xl",
        className,
      )}
    >
      {tinted && form === "band" ? <BandTintRoot /> : null}
      {children ? (
        <div
          className={cn(
            "relative z-6",
            form === "band" && "mx-auto w-full max-w-(--page-width)",
          )}
        >
          {children}
        </div>
      ) : null}
      <div
        className={cn("relative h-44 sm:h-54", sceneClassName)}
        data-slot="meadow-scene"
      >
        <span
          aria-hidden
          className={cn(
            "absolute inset-x-[-14%] bottom-0 z-1 h-28 sm:h-[150px]",
            hill,
            hillShape,
          )}
        />
        <span
          aria-hidden
          className={cn(
            "absolute inset-x-[-24%] bottom-0 z-4 h-11 sm:h-[58px]",
            frontHill,
            hillShape,
          )}
        />
        {cast ? (
          <div className="absolute inset-x-0 bottom-2 z-5 flex justify-center">
            {cast}
          </div>
        ) : null}
      </div>
      {ground ? (
        <div className={cn("relative z-6 pt-1.5 pb-6 sm:pb-9", frontHill)}>
          {ground}
        </div>
      ) : form === "band" ? (
        <div aria-hidden className={cn("h-7 sm:h-[34px]", frontHill)} />
      ) : null}
    </div>
  );
};
