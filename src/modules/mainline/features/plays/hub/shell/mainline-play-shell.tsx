import { MainlinePlayArchivedBanner } from "@/modules/mainline/features/plays/hub/shell/mainline-play-archived-banner";
import { MainlinePlayDockedBar } from "@/modules/mainline/features/plays/hub/shell/mainline-play-docked-bar";
import { MainlinePlayNavigation } from "@/modules/mainline/features/plays/hub/shell/mainline-play-navigation";
import { MainlinePlayDetails } from "@/modules/mainline/features/plays/hub/shell/top-section/mainline-play-details";
import { MainlinePlayTopSection } from "@/modules/mainline/features/plays/hub/shell/top-section/mainline-play-top-section";
import { getPlayTitle } from "@/modules/mainline/features/plays/hub/shell/top-section/play-title";
import type {
  MainlinePlayShellData,
  PlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/types";

type MainlinePlayShellProps = {
  children: React.ReactNode;
  data: MainlinePlayShellData;
  editing?: PlayHeaderEditing;
  playId: string;
};

/*
 * A Play: its head, its sections and the docked bar. It wears the app's one
 * palette; the cover carries the game.
 */
export const MainlinePlayShell = ({
  children,
  data,
  editing,
  playId,
}: MainlinePlayShellProps) => {
  const navigation = (
    <MainlinePlayNavigation
      collectiblesAvailable={data.collectiblesAvailable}
      playId={playId}
    />
  );

  return (
    <div className="flex w-full min-w-0 flex-col gap-6 sm:gap-8">
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
          editing={editing}
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
