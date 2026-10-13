import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

import type { MainlinePlayPokedexEntry, PokedexProgressState } from "../types";

export type PokedexSpeciesPresentationProps = {
  entry: MainlinePlayPokedexEntry;
  versionGroupSlug: string;
  isPending: boolean;
  isPressed: boolean;
  onToggle: () => void;
  state: PokedexProgressState;
  toggleLabel: string;
};

export const formatPokedexNumber = (number: number) =>
  `#${String(number).padStart(3, "0")}`;

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
  versionGroupSlug,
}: {
  entry: MainlinePlayPokedexEntry;
  versionGroupSlug: string;
}) => {
  return (
    <ExplanatoryTip
      content="Open in Codex"
      nativeButton={false}
      pinOnPress={false}
      trigger={
        <Link
          href={appRoutes.codexPokemonEntry(
            versionGroupSlug,
            entry.speciesSlug,
          )}
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
