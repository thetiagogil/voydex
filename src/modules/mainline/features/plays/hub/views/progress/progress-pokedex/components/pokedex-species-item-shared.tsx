import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

import type { MainlinePlayPokedexEntry, PokedexProgressState } from "../types";

export type PokedexSpeciesPresentationProps = {
  entry: MainlinePlayPokedexEntry;
  gameSlug: string;
  isPending: boolean;
  isPressed: boolean;
  onToggle: () => void;
  state: PokedexProgressState;
  toggleLabel: string;
};

export const formatPokedexNumber = (number: number) =>
  `#${String(number).padStart(3, "0")}`;

/* The state mark: a Poké Ball on white when caught, an eye when seen. */
export const PokedexStateIcon = ({
  className,
  state,
}: {
  className?: string;
  state: PokedexProgressState;
}) => {
  if (state === "missing") {
    return null;
  }

  const isCaught = state === "caught";

  return (
    <span
      role="img"
      aria-label={isCaught ? "Caught" : "Seen"}
      className={cn(
        "grid size-[26px] place-items-center rounded-full",
        isCaught
          ? "text-ball bg-white shadow-[0_2px_0_rgb(0_0_0/0.08)]"
          : "bg-surface-2 text-ink-2",
        className,
      )}
    >
      <AppIcon
        icon={isCaught ? appIcons.product.caught : appIcons.product.seen}
        size="md"
        aria-hidden
      />
    </span>
  );
};

export const PokedexStateLabel = ({
  state,
}: {
  state: PokedexProgressState;
}) => {
  if (state === "missing") {
    return null;
  }

  const config =
    state === "caught"
      ? {
          icon: appIcons.product.caught,
          label: "Caught",
          className: "text-ball",
        }
      : {
          icon: appIcons.product.seen,
          label: "Seen",
          className: "text-ink-2",
        };

  return (
    <span
      className={cn(
        "text-13 inline-flex shrink-0 items-center gap-1.5 font-extrabold",
        config.className,
      )}
    >
      <AppIcon icon={config.icon} size="sm" aria-hidden />
      {config.label}
    </span>
  );
};

export const PokedexCodexLink = ({
  entry,
  gameSlug,
}: {
  entry: MainlinePlayPokedexEntry;
  gameSlug: string;
}) => {
  return (
    <ExplanatoryTip
      content="Open in Codex"
      nativeButton={false}
      pinOnPress={false}
      trigger={
        <Link
          href={appRoutes.codexPokemonGameSpecies(gameSlug, entry.speciesSlug)}
          aria-label={`Open ${entry.speciesName} in Codex`}
          role="link"
          className={buttonVariants({
            variant: "ghost",
            size: "icon-xs",
            className: "pointer-events-auto",
          })}
        />
      }
    >
      <span className="inline-flex">
        <AppIcon icon={appIcons.modules.codex} aria-hidden />
      </span>
    </ExplanatoryTip>
  );
};
