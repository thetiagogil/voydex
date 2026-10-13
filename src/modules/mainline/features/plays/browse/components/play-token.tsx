import { GameCover } from "@/modules/reference/features/games/components/game-cover";

type PlayTokenProps = {
  coverImageUrl: string | null;
  gameName: string;
};

/*
 * A Play's cover on its soft game tile: the one game-colour fill on a Plays
 * card. It is the Play's own, so it keeps a white border and a game lip.
 * Wear it inside `game-scope`.
 */
export const PlayToken = ({ coverImageUrl, gameName }: PlayTokenProps) => (
  <div className="grid h-34 place-items-center overflow-hidden rounded-lg border-4 border-white bg-[color-mix(in_oklab,var(--game)_14%,var(--surface))] px-1.5 shadow-[0_4px_0_var(--game-lip)]">
    <GameCover
      alt={`${gameName} cover art`}
      coverImageUrl={coverImageUrl}
      gameName={gameName}
      size="token"
    />
  </div>
);
