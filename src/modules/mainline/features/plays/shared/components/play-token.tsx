import { GameCover } from "@/modules/reference/features/games/components/game-cover";

type PlayTokenProps = {
  coverImageUrl: string | null;
  gameName: string;
  /* `sm` on Home's Continue card: 64px tall. */
  size?: "md" | "sm";
};

/*
 * A Play's cover on the Plays list, as the Play header shows it: the box
 * itself in a white frame, no tile behind it. Every cover stands the same
 * height, centred in the card's cover column, so the text beside it lines up
 * whatever the platform's box shape.
 */
export const PlayToken = ({
  coverImageUrl,
  gameName,
  size = "md",
}: PlayTokenProps) => (
  <div className="grid place-items-center">
    <GameCover
      alt={`${gameName} cover art`}
      coverImageUrl={coverImageUrl}
      gameName={gameName}
      size={size === "sm" ? "slim" : "token"}
    />
  </div>
);
