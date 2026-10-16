import Image from "next/image";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { CodexGamePokedexSummary } from "@/modules/codex/features/games/detail/types";
import { getPokedexShortName } from "@/modules/codex/shared/utils/game-names";
import { formatPokedexName } from "@/modules/reference/features/pokemon/utils/pokemon-formatters";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

const pokedexKindLabels: Record<string, string> = {
  dlc: "Expansion",
  local: "Local",
  national: "National",
  regional: "Regional",
  special: "Special",
};

/*
 * The strip hops as one wave on hover, left to right, over at most this
 * long: 30ms between neighbours for a few sprites, closer together for a
 * long strip, so every sprite takes its turn.
 */
const HOP_STEP_MS = 30;
const HOP_WAVE_MS = 150;

const getHopDelay = (index: number, count: number) =>
  index * Math.min(HOP_STEP_MS, HOP_WAVE_MS / Math.max(count - 1, 1));

type GamePokedexTileProps = {
  summary: CodexGamePokedexSummary;
  versionGroupSlug: string;
};

const GamePokedexTileStrip = ({ imageUrls }: { imageUrls: string[] }) => (
  <span
    aria-hidden
    className={cn(
      /*
       * The fade masks everything outside the strip's box, so it keeps room
       * above for a sprite's hop and ring.
       */
      "-my-1 flex min-w-0 overflow-x-clip [mask-image:linear-gradient(90deg,black_80%,transparent)] py-2 pl-2",
    )}
  >
    {imageUrls.map((imageUrl, index) => (
      <span
        key={`${imageUrl}-${index}`}
        className="bg-surface -ml-2 grid size-12 shrink-0 place-items-center rounded-full shadow-[0_0_0_3px_var(--surface-2)] transition-transform duration-200 ease-[cubic-bezier(0.3,1.5,0.5,1)] motion-safe:group-hover/dex:-translate-y-[3px]"
        style={{
          transitionDelay: `${getHopDelay(index, imageUrls.length)}ms`,
        }}
      >
        <Image
          src={imageUrl}
          alt=""
          width={42}
          height={42}
          className="size-10.5"
        />
      </span>
    ))}
  </span>
);

/*
 * One of the game's Pokédexes as a slim row, the whole row a link: its kind,
 * name and how many Pokémon it lists, then a strip of Pokémon from across
 * it. The visible text names the link, so the kind and count are read out
 * too. The National Pokédex opens the game's own National list (386 in Ruby
 * and Sapphire), outlined so the regional ones lead.
 */
export const GamePokedexTile = ({
  summary,
  versionGroupSlug,
}: GamePokedexTileProps) => {
  const { pokedex, pokemonCount, previewImageUrls } = summary;
  const isNational = pokedex.pokedex_kind === "national";
  const pokedexName = formatPokedexName(pokedex.name);
  const shortName = getPokedexShortName(pokedexName);

  return (
    <Link
      href={appRoutes.codexVersionGroupPokedex(versionGroupSlug, pokedex.slug)}
      className={cn(
        "group/dex bg-surface-2 hover:bg-hover grid min-w-0 items-center gap-x-6 gap-y-3 rounded-lg px-4.5 py-3.5 transition-[translate,background-color] duration-150 motion-safe:hover:-translate-y-[3px] md:grid-cols-[190px_minmax(0,1fr)] md:px-5.5",
        isNational &&
          "hover:bg-surface-2 bg-transparent shadow-[inset_0_0_0_1.5px_var(--line)]",
      )}
    >
      <span className="flex min-w-0 flex-col gap-px">
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
        <b className="text-17 truncate font-extrabold">
          {shortName}
          {/* The row's text names the link; this keeps "Pokédex" in it. */}
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
      {previewImageUrls.length ? (
        <GamePokedexTileStrip imageUrls={previewImageUrls} />
      ) : null}
    </Link>
  );
};
