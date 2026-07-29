import Link from "next/link";

import { appRoutes } from "@/config/routes";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
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

export const PokedexStateIcon = ({
  className,
  state,
}: {
  className?: string;
  state: PokedexProgressState;
}) => {
  const config: {
    icon: AppIconComponent;
    label: string;
  } | null =
    state === "caught"
      ? { icon: appIcons.product.pokeball, label: "Caught" }
      : state === "seen"
        ? { icon: appIcons.product.seen, label: "Seen" }
        : null;

  if (!config) {
    return null;
  }

  return (
    <span
      aria-label={config.label}
      className={cn(
        "inline-flex size-7 items-center justify-center rounded-md",
        state === "caught" ? "text-primary" : "text-secondary-foreground/80",
        className,
      )}
    >
      <AppIcon icon={config.icon} size="md" aria-hidden />
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
          icon: appIcons.product.pokeball,
          label: "Caught",
          className: "text-primary",
        }
      : {
          icon: appIcons.product.seen,
          label: "Seen",
          className: "text-secondary-foreground",
        };

  return (
    <span
      className={cn(
        "inline-flex shrink-0 items-center gap-1.5 text-xs font-semibold",
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
