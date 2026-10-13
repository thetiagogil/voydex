import type { SiteArt } from "@/features/site/types";
import { cn } from "@/shared/utils/cn";

type GameCoverProps = {
  art: SiteArt;
  className?: string;
  game: { name: string; slug: string };
};

/*
 * A game's box art, or a cover-shaped tile in the game's colour while there
 * is none. Decorative: the words beside it name the game.
 */
export const GameCover = ({ art, className, game }: GameCoverProps) => {
  const src = art.gameCover(game.slug);

  if (!src) {
    return (
      <span
        style={art.gameColour(game.slug)}
        aria-hidden
        className={cn(
          "game-scope bg-game-strong text-12 shadow-cover grid aspect-3/4 place-items-center rounded-sm px-1 text-center font-extrabold text-white",
          className,
        )}
      >
        {game.name}
      </span>
    );
  }

  return (
    // Box art comes in each platform's own shape, so the cover keeps its intrinsic width.
    // eslint-disable-next-line @next/next/no-img-element
    <img
      src={src}
      alt=""
      loading="lazy"
      className={cn("shadow-cover w-auto max-w-none rounded-sm", className)}
    />
  );
};
