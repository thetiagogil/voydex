import type { ReactNode } from "react";

import type {
  MainlinePlayShellData,
  PlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/types";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { PageBand } from "@/shared/components/page-band";
import { cn } from "@/shared/utils/cn";

import { MainlinePlayTopInfo } from "./mainline-play-top-info";

type MainlinePlayTopSectionProps = {
  data: MainlinePlayShellData;
  /* The Play details button. */
  details?: ReactNode;
  /* A Play's own head lets status, trainer and playtime be edited in place. */
  editing?: PlayHeaderEditing;
  navigation: ReactNode;
};

/*
 * The Play's head, on the band that opens every page: the cover, the
 * Baloo 2 name, its facts and the section tabs, with the dotted texture
 * that only a Play wears. What it has no room for sits behind Play details.
 */
export const MainlinePlayTopSection = ({
  data,
  details,
  editing,
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
        <MainlinePlayTopInfo
          data={data}
          editing={editing}
          titleId="mainline-play-title"
        />
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

  return <PageBand className="pt-4 pb-5 sm:pt-6 sm:pb-6">{head}</PageBand>;
};
