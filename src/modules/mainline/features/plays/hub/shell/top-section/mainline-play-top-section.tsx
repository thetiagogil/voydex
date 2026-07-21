import type { MainlinePlayHubData } from "@/modules/mainline/features/plays/hub/types";

import { MainlinePlayTopActions } from "./mainline-play-top-actions";
import { MainlinePlayTopCoverArt } from "./mainline-play-top-cover-art";
import { MainlinePlayTopInfo } from "./mainline-play-top-info";

type MainlinePlayTopSectionProps = {
  data: MainlinePlayHubData;
};

export const MainlinePlayTopSection = ({
  data,
}: MainlinePlayTopSectionProps) => {
  const gameName = data.play.game_name ?? "Unknown game";

  return (
    <section
      aria-labelledby="mainline-play-title"
      className="grid gap-5 sm:grid-cols-[auto_minmax(0,1fr)] sm:items-center sm:gap-x-5 sm:gap-y-4 lg:grid-cols-[auto_minmax(0,1fr)_auto] lg:gap-x-6"
    >
      <MainlinePlayTopCoverArt
        coverImageUrl={data.coverImageUrl}
        gameName={gameName}
      />
      <MainlinePlayTopInfo data={data} titleId="mainline-play-title" />
      <div className="sm:col-span-2 lg:col-span-1">
        <MainlinePlayTopActions data={data} />
      </div>
    </section>
  );
};
