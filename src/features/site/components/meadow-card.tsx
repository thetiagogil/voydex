import type { ReactNode } from "react";

import { MeadowScene } from "@/shared/components/meadow-scene";
import { cn } from "@/shared/utils/cn";

type MeadowCardProps = {
  /*
   * Who stands on the hill: the first partners (`MeadowPartners`), or a
   * picked game's starters on Start a Play.
   */
  cast: ReactNode;
  children: ReactNode;
  /*
   * `band` is Home's and Start a Play's: it opens the page, edge to edge
   * under the bar, rounded only at the bottom and ending on a strip of
   * ground. `card` is the Intro's closing meadow, a rounded card ending on
   * the front hill.
   */
  form?: "band" | "card";
  /* What stands on the band's ground strip, such as Start a Play's line and button. */
  ground?: ReactNode;
  titleId: string;
};

/*
 * The site's meadow, on the shared `MeadowScene`: a front door's one loud
 * thing. The copy sits on the sky, and its cast (usually one first partner
 * per generation, popping in once per visit) stands on the hill below it.
 */
export const MeadowCard = ({
  cast,
  children,
  form = "card",
  ground,
  titleId,
}: MeadowCardProps) => {
  const band = form === "band";

  return (
    <section aria-labelledby={titleId}>
      <MeadowScene
        form={form}
        className="text-center"
        sceneClassName={cn("sm:h-51.5", band ? "h-40" : "h-37.5")}
        cast={cast}
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
