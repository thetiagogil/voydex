import { MainlinePlayArchivedBanner } from "@/modules/mainline/features/plays/hub/shell/mainline-play-archived-banner";
import { MainlinePlayDockedBar } from "@/modules/mainline/features/plays/hub/shell/mainline-play-docked-bar";
import { MainlinePlayGameColourRoot } from "@/modules/mainline/features/plays/hub/shell/mainline-play-game-colour-root";
import { MainlinePlayNavigation } from "@/modules/mainline/features/plays/hub/shell/mainline-play-navigation";
import { MainlinePlayDetails } from "@/modules/mainline/features/plays/hub/shell/top-section/mainline-play-details";
import { MainlinePlayTopSection } from "@/modules/mainline/features/plays/hub/shell/top-section/mainline-play-top-section";
import { getPlayTitle } from "@/modules/mainline/features/plays/hub/shell/top-section/play-title";
import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";
import { getGameColourStyle } from "@/modules/reference/features/games/utils/game-color-styles";

type MainlinePlayShellProps = {
  children: React.ReactNode;
  data: MainlinePlayShellData;
  playId: string;
};

/* Everything inside a Play wears its game's colour. */
export const MainlinePlayShell = ({
  children,
  data,
  playId,
}: MainlinePlayShellProps) => {
  const gameColourStyle = getGameColourStyle(data.play.game_slug);
  const navigation = (
    <MainlinePlayNavigation
      collectiblesAvailable={data.collectiblesAvailable}
      playId={playId}
    />
  );

  return (
    <div
      className="game-scope flex w-full min-w-0 flex-col gap-6 sm:gap-8"
      style={gameColourStyle}
    >
      <MainlinePlayGameColourRoot style={gameColourStyle} />
      <MainlinePlayDockedBar
        coverImageUrl={data.coverImageUrl}
        gameName={data.play.game_name ?? "Unknown game"}
        navigation={
          <MainlinePlayNavigation
            collectiblesAvailable={data.collectiblesAvailable}
            label="Play sections, docked"
            playId={playId}
          />
        }
        title={getPlayTitle(data)}
      >
        <MainlinePlayTopSection
          data={data}
          details={<MainlinePlayDetails data={data} />}
          navigation={navigation}
        />
      </MainlinePlayDockedBar>

      <div className="flex min-w-0 flex-col gap-6">
        {data.play.archived_at ? (
          <MainlinePlayArchivedBanner
            playId={playId}
            playName={data.play.play_name ?? "Untitled Play"}
          />
        ) : null}
        {children}
      </div>
    </div>
  );
};
