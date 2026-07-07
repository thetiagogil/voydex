import type { MainlinePlayPageData } from "@/modules/mainline/features/plays/shared/types";

import { MainlinePlayTopActions } from "./mainline-play-top-actions";
import { MainlinePlayTopCoverArt } from "./mainline-play-top-cover-art";
import { MainlinePlayTopInfo } from "./mainline-play-top-info";

type MainlinePlayTopSectionProps = {
  data: MainlinePlayPageData;
};

export const MainlinePlayTopSection = ({
  data,
}: MainlinePlayTopSectionProps) => {
  const gameName = data.play.game_name ?? "Unknown game";

  return (
    <section
      aria-labelledby="mainline-play-title"
      className="grid gap-5 lg:grid-cols-[auto_minmax(0,1fr)_auto] lg:items-start lg:gap-6"
    >
      <MainlinePlayTopCoverArt
        coverImageUrl={data.coverImageUrl}
        gameName={gameName}
      />
      <MainlinePlayTopInfo data={data} titleId="mainline-play-title" />
      <MainlinePlayTopActions data={data} />
    </section>
  );
};
