import type { ReactNode } from "react";

import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import { GameCover } from "@/modules/reference/features/games/components/game-cover";
import { cn } from "@/shared/utils/cn";

import { MainlinePlayTopInfo } from "./mainline-play-top-info";

type MainlinePlayTopSectionProps = {
  data: MainlinePlayShellData;
  /* The Play details button; the public site's still leaves it out. */
  details?: ReactNode;
  navigation: ReactNode;
};

/*
 * The Play header: the loudest thing in the app, on purpose. Soft game fill,
 * the dotted texture, the Fredoka name, the cover and a 5px game lip. What
 * it has no room for sits behind Play details.
 */
export const MainlinePlayTopSection = ({
  data,
  details,
  navigation,
}: MainlinePlayTopSectionProps) => {
  const gameName = data.play.game_name ?? "Unknown game";

  return (
    <section
      aria-labelledby="mainline-play-title"
      className="bg-game-soft play-texture shadow-game mt-2 rounded-xl px-[18px] pt-5 pb-[18px] sm:rounded-2xl sm:px-7 sm:pt-6 sm:pb-5 lg:px-[30px] lg:pt-[26px] lg:pb-[22px]"
    >
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
};
