import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { CodexGamePokedexSummary } from "@/modules/codex/features/games/detail/types";
import { getPokedexShortName } from "@/modules/codex/features/games/shared/utils/game-names";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

export type GamePokedexTileLayout = "compact" | "single" | "tile";

const pokedexKindLabels: Record<string, string> = {
  dlc: "Expansion",
  local: "Local",
  national: "National",
  regional: "Regional",
  special: "Special",
};

const hopDelayClassNames = [
  "",
  "delay-[30ms]",
  "delay-[60ms]",
  "delay-[90ms]",
  "delay-[120ms]",
];

type GamePokedexTileProps = {
  gameSlug: string;
  layout: GamePokedexTileLayout;
  summary: CodexGamePokedexSummary;
};

const GamePokedexTileStrip = ({
  imageUrls,
  layout,
}: {
  imageUrls: string[];
  layout: GamePokedexTileLayout;
}) => {
  const isCompact = layout === "compact";

  return (
    <span
      aria-hidden
      className={cn(
        "flex pl-2",
        layout === "single" &&
          "overflow-hidden [mask-image:linear-gradient(90deg,black_78%,transparent)] py-1 [grid-area:strip]",
      )}
    >
      {imageUrls.map((imageUrl, index) => (
        <span
          key={`${imageUrl}-${index}`}
          className={cn(
            "bg-surface -ml-2 grid shrink-0 place-items-center rounded-full shadow-[0_0_0_3px_var(--surface-2)] transition-transform duration-200 ease-[cubic-bezier(0.3,1.5,0.5,1)] motion-safe:group-hover/dex:-translate-y-[3px]",
            isCompact ? "size-10.5" : "size-12.5",
            hopDelayClassNames[index],
          )}
        >
          <Image
            src={imageUrl}
            alt=""
            width={isCompact ? 36 : 44}
            height={isCompact ? 36 : 44}
            className={isCompact ? "size-9" : "size-11"}
          />
        </span>
      ))}
    </span>
  );
};

/*
 * One of the game's Pokédexes: a strip of its first entries, its kind, its
 * name and how many Pokémon it lists. A single Pokédex lays out in a row.
 * The visible text names the link, so the kind and count are read out too.
 */
export const GamePokedexTile = ({
  gameSlug,
  layout,
  summary,
}: GamePokedexTileProps) => {
  const { pokedex, pokemonCount, previewImageUrls } = summary;
  const isNational = pokedex.pokedex_kind === "national";
  const isSingle = layout === "single";
  const pokedexName = formatPokedexName(pokedex.name);
  const shortName = getPokedexShortName(pokedexName);

  return (
    <Link
      href={appRoutes.codexGamePokedex(gameSlug, pokedex.slug)}
      className={cn(
        "group/dex bg-surface-2 hover:bg-hover relative flex min-w-0 flex-col gap-3 rounded-lg px-4.5 py-4 transition-[transform,background-color] duration-150 motion-safe:hover:-translate-y-[3px]",
        isNational &&
          "hover:bg-surface-2 bg-transparent shadow-[inset_0_0_0_1.5px_var(--line)]",
        layout === "compact" && "gap-2.5 p-3.5",
        isSingle &&
          "grid grid-cols-[minmax(0,1fr)_auto] gap-x-6 gap-y-3 [grid-template-areas:'body_go'_'strip_strip'] md:grid-cols-[170px_minmax(0,1fr)_auto] md:items-center md:px-5.5 md:py-4.5 md:[grid-template-areas:'body_strip_go']",
      )}
    >
      {previewImageUrls.length ? (
        <GamePokedexTileStrip imageUrls={previewImageUrls} layout={layout} />
      ) : null}
      <span
        className={cn(
          "flex min-w-0 flex-col gap-px",
          isSingle && "[grid-area:body]",
        )}
      >
        <span className="text-12 text-ink-2 inline-flex items-center gap-1.5 font-extrabold">
          <AppIcon
            icon={
              isNational ? appIcons.product.pokedex : appIcons.product.location
            }
            size="xs"
            aria-hidden
          />
          {pokedexKindLabels[pokedex.pokedex_kind] ?? "Pokédex"}
        </span>
        <b
          className={cn(
            "truncate font-extrabold",
            layout === "compact" ? "text-16" : "text-17",
          )}
        >
          {shortName}
          {/* The tile's text names the link; this keeps "Pokédex" in it. */}
          {pokedexName !== shortName ? (
            <span className="sr-only">
              {pokedexName.slice(shortName.length)}
            </span>
          ) : null}
        </b>
        <span className="text-13 text-ink-2 font-semibold">
          <span className="tabular-nums">{pokemonCount.toLocaleString()}</span>{" "}
          Pokémon
        </span>
      </span>
      {isSingle ? (
        <span className="text-14 text-link inline-flex items-center gap-1 self-start font-extrabold [grid-area:go] md:self-center">
          Browse
          <AppIcon icon={appIcons.actions.continue} size="sm" aria-hidden />
        </span>
      ) : (
        <AppIcon
          icon={appIcons.actions.continue}
          size="md"
          aria-hidden
          className="text-ink-3 absolute top-4 right-4"
        />
      )}
    </Link>
  );
};
