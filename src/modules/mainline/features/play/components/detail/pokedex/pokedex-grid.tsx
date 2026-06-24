import type { MainlinePlayPokedexEntry } from "@/modules/mainline/features/play/types";
import { PokedexProgressButtons } from "@/modules/mainline/features/play/components/detail/actions/pokedex-progress-buttons";
import { isRequiredPokedexEntry } from "@/modules/mainline/features/play/components/detail/pokedex/pokedex-filters";
import {
  formatDexNumber,
  getPokedexDisplayName,
  getPokemonPrimaryTypeSlug,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { PokemonTypeBadges } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { StatusBadge } from "@/shared/components/status-badge";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Card, CardContent } from "@/shared/components/ui/card";

type PokedexGridProps = {
  entries: MainlinePlayPokedexEntry[];
  playId: string;
};

type PokedexCardProps = {
  entry: MainlinePlayPokedexEntry;
  playId: string;
};

const PokedexCard = ({ entry, playId }: PokedexCardProps) => {
  return (
    <Card size="sm" className="min-h-full">
      <CardContent className="flex min-h-full flex-col gap-3">
        <div className="flex items-start justify-between gap-2">
          <span className="text-muted-foreground text-sm font-medium">
            {formatDexNumber(entry.pokedex_number)}
          </span>
          <StatusBadge
            tone={isRequiredPokedexEntry(entry) ? "warning" : "info"}
          >
            {isRequiredPokedexEntry(entry) ? "Required" : "Optional"}
          </StatusBadge>
        </div>

        <PokemonPortrait
          alt={getPokedexDisplayName(entry)}
          imageUrl={entry.display.imageUrl}
          type={getPokemonPrimaryTypeSlug(entry)}
          className="mx-auto w-full max-w-36"
        />

        <div className="text-center">
          <p className="font-medium">{getPokedexDisplayName(entry)}</p>
          <div className="mt-2">
            <PokemonTypeBadges pokemon={entry} />
          </div>
        </div>

        <div className="mt-auto">
          <PokedexProgressButtons
            isCaught={entry.is_caught}
            isSeen={entry.is_seen}
            playId={playId}
            speciesId={entry.species_id}
          />
        </div>
      </CardContent>
    </Card>
  );
};

export const PokedexGrid = ({ entries, playId }: PokedexGridProps) => {
  return (
    <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-4 2xl:grid-cols-5">
      {entries.map((entry) => (
        <PokedexCard
          key={`${entry.pokedex_id}-${entry.species_id}`}
          entry={entry}
          playId={playId}
        />
      ))}
    </div>
  );
};
