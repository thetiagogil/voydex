import Link from "next/link";

import type { PublicArt } from "@/config/public-art";
import type { StartIntentPreview } from "@/config/start-intent";
import { cn } from "@/shared/utils/cn";

type StartIntentCardProps = {
  art: Pick<PublicArt, "gameColour" | "gameCover">;
  /* Back to Start a Play to pick again; left out where the pick is settled. */
  changeHref?: string;
  className?: string;
  intent: StartIntentPreview;
};

/*
 * What you're starting (v3 `.au-intent`): the game you picked on Start a
 * Play, on its own wash because the game is the subject here, and your
 * partner or that you'll choose one next.
 */
export const StartIntentCard = ({
  art,
  changeHref,
  className,
  intent,
}: StartIntentCardProps) => (
  <div
    role="group"
    aria-label="What you're starting"
    style={art.gameColour(intent.game.slug)}
    className={cn(
      "game-scope bg-game-wash mb-5 flex min-w-0 items-center gap-3.5 rounded-md py-2.5 pr-4 pl-2.5",
      className,
    )}
  >
    {art.gameCover({
      className: "h-[58px] w-auto shrink-0 rounded-xs",
      game: intent.game,
    })}
    <div className="flex min-w-0 flex-col">
      <p className="font-display text-17 text-game-deep leading-tight font-semibold">
        {intent.game.name}
      </p>
      <p className="text-13 text-ink-tint font-semibold">
        {intent.partner
          ? `${intent.partner.name} is your partner`
          : "You'll choose your partner next"}
      </p>
    </div>
    {changeHref ? (
      <Link
        href={changeHref}
        aria-label={`Change the game or partner, ${intent.game.name}`}
        className="text-link relative ml-auto shrink-0 rounded-xs text-[13.5px] font-extrabold after:absolute after:-inset-2.5 hover:underline"
      >
        Change
      </Link>
    ) : null}
  </div>
);
