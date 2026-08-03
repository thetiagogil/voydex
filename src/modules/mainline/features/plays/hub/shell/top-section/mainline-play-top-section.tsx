import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";

import { MainlinePlayTopCoverArt } from "./mainline-play-top-cover-art";
import { MainlinePlayTopInfo } from "./mainline-play-top-info";

type MainlinePlayTopSectionProps = {
  data: MainlinePlayShellData;
};

export const MainlinePlayTopSection = ({
  data,
}: MainlinePlayTopSectionProps) => {
  const gameName = data.play.game_name ?? "Unknown game";

  return (
    <section
      aria-labelledby="mainline-play-title"
      className="grid gap-5 sm:grid-cols-[auto_minmax(0,1fr)] sm:items-center sm:gap-x-5 sm:gap-y-4 lg:gap-x-6"
    >
      <MainlinePlayTopCoverArt
        coverImageUrl={data.coverImageUrl}
        gameName={gameName}
      />
      <MainlinePlayTopInfo data={data} titleId="mainline-play-title" />
    </section>
  );
};
