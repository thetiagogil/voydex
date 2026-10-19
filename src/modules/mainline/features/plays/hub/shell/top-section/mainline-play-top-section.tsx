import type { ReactNode } from "react";

import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { PageBand } from "@/shared/components/page-band";
import { cn } from "@/shared/utils/cn";

import { MainlinePlayTopInfo } from "./mainline-play-top-info";

type MainlinePlayTopSectionProps = {
  data: MainlinePlayShellData;
  /* The Play details button; the public site's still leaves it out. */
  details?: ReactNode;
  /*
   * `band` opens a Play's pages; `card` is the same head as a card, for the
   * public site's sample Play.
   */
  form?: "band" | "card";
  navigation: ReactNode;
};

/*
 * The Play's head, on the band that opens every page: the cover, the
 * Fredoka name, its facts and the section tabs, with the dotted texture
 * that only a Play wears. What it has no room for sits behind Play details.
 */
export const MainlinePlayTopSection = ({
  data,
  details,
  form = "band",
  navigation,
}: MainlinePlayTopSectionProps) => {
  const gameName = data.play.game_name ?? "Unknown game";
  const head = (
    <section aria-labelledby="mainline-play-title">
      <div
        className={cn(
          "relative z-1 flex items-start gap-4 sm:items-center sm:gap-6",
          details && "max-sm:pr-12",
        )}
      >
        <GameCover
          alt={`${gameName} cover art`}
          coverImageUrl={data.coverImageUrl}
          eager
          gameName={gameName}
          size="header"
        />
        <MainlinePlayTopInfo data={data} titleId="mainline-play-title" />
        {details ? (
          <div className="shrink-0 max-sm:absolute max-sm:-top-2 max-sm:-right-1.5">
            {details}
          </div>
        ) : null}
      </div>
      <div className="no-scrollbar relative z-1 -mx-1.5 mt-3.5 overflow-x-auto p-1.5 sm:mt-4">
        {navigation}
      </div>
    </section>
  );

  return form === "band" ? (
    <PageBand className="pt-4 pb-5 sm:pt-6 sm:pb-6">{head}</PageBand>
  ) : (
    <div className="bg-band shadow-card rounded-xl px-4.5 pt-5 pb-4.5 sm:rounded-2xl sm:px-7 sm:pt-6 sm:pb-5">
      {head}
    </div>
  );
};
