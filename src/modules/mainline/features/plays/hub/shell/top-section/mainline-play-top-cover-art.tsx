import { getGameInitials } from "@/modules/reference/features/games/utils/game-display";

type MainlinePlayTopCoverArtProps = {
  coverImageUrl: string | null;
  gameName: string;
};

export const MainlinePlayTopCoverArt = ({
  coverImageUrl,
  gameName,
}: MainlinePlayTopCoverArtProps) => {
  if (!coverImageUrl) {
    return (
      <div className="bg-game font-display text-on-game shadow-cover grid aspect-[3/4] w-[54px] shrink-0 place-items-center rounded-sm border-4 border-white text-20 font-semibold sm:w-[74px] sm:text-24">
        {getGameInitials(gameName)}
      </div>
    );
  }

  return (
    // Intrinsic width is required because game packaging uses different aspect ratios.
    // eslint-disable-next-line @next/next/no-img-element
    <img
      src={coverImageUrl}
      alt={`${gameName} cover art`}
      className="shadow-cover w-[54px] shrink-0 rounded-md border-4 border-white sm:w-[74px]"
    />
  );
};
