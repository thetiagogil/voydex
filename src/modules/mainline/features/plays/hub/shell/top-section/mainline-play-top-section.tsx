import type { ReactNode } from "react";

import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";

import { MainlinePlayTopCoverArt } from "./mainline-play-top-cover-art";
import { MainlinePlayTopInfo } from "./mainline-play-top-info";

type MainlinePlayTopSectionProps = {
  data: MainlinePlayShellData;
  navigation: ReactNode;
};

/*
 * The Play header: the loudest thing in the app, on purpose. Soft game fill,
 * the dotted texture, the Fredoka name, the cover and a 5px game lip.
 */
export const MainlinePlayTopSection = ({
  data,
  navigation,
}: MainlinePlayTopSectionProps) => {
  const gameName = data.play.game_name ?? "Unknown game";

  return (
    <section
      aria-labelledby="mainline-play-title"
      className="bg-game-soft play-texture shadow-game mt-2 rounded-xl px-[18px] pt-5 pb-[18px] sm:rounded-2xl sm:px-7 sm:pt-6 sm:pb-5 lg:px-[30px] lg:pt-[26px] lg:pb-[22px]"
    >
      <div className="relative z-1 flex items-start gap-4 sm:items-center sm:gap-6">
        <MainlinePlayTopCoverArt
          coverImageUrl={data.coverImageUrl}
          gameName={gameName}
        />
        <MainlinePlayTopInfo data={data} titleId="mainline-play-title" />
      </div>
      <div className="no-scrollbar relative z-1 mt-5 overflow-x-auto pb-1 sm:mt-[22px]">
        {navigation}
      </div>
    </section>
  );
};
