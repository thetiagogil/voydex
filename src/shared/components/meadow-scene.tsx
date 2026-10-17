import type { CSSProperties, ReactNode } from "react";

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
}: MeadowSceneProps) => {
  return (
    <div
      style={style}
      className={cn(
        "bg-sky relative isolate overflow-hidden",
        form === "band"
          ? "page-band rounded-b-4xl sm:rounded-b-[56px]"
          : "rounded-xl sm:rounded-2xl",
        className,
      )}
    >
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
            "bg-hill absolute inset-x-[-14%] bottom-0 z-1 h-28 sm:h-37.5",
            hillShape,
          )}
        />
        <span
          aria-hidden
          className={cn(
            "bg-hill-2 absolute inset-x-[-24%] bottom-0 z-4 h-11 sm:h-14.5",
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
        <div className="bg-hill-2 relative z-6 pt-1.5 pb-6 sm:pb-9">
          {ground}
        </div>
      ) : form === "band" ? (
        <div aria-hidden className="bg-hill-2 h-7 sm:h-8.5" />
      ) : null}
    </div>
  );
};
