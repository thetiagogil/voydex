import type { MainlinePlayPokedexEntry } from "@/modules/mainline/features/play/types";
import { PokedexProgressButtons } from "@/modules/mainline/features/play/components/detail/actions/pokedex-progress-buttons";
import { isRequiredPokedexEntry } from "@/modules/mainline/features/play/components/detail/pokedex/pokedex-filters";
import {
  formatDexNumber,
  getPokedexDisplayName,
  getPokemonPrimaryTypeSlug,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import { PokemonTypeBadges } from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { StatusBadge } from "@/shared/components/app/status-badge";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";

type PokedexListProps = {
  entries: MainlinePlayPokedexEntry[];
  playId: string;
};

export const PokedexList = ({ entries, playId }: PokedexListProps) => {
  return (
    <Table>
      <TableHeader>
        <TableRow>
          <TableHead>Number</TableHead>
          <TableHead>Pokemon</TableHead>
          <TableHead>Types</TableHead>
          <TableHead>Completion</TableHead>
          <TableHead className="text-right">Progress</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {entries.map((entry) => (
          <TableRow key={`${entry.pokedex_id}-${entry.species_id}`}>
            <TableCell>{formatDexNumber(entry.pokedex_number)}</TableCell>
            <TableCell>
              <div className="flex items-center gap-3">
                <PokemonPortrait
                  alt={getPokedexDisplayName(entry)}
                  imageUrl={entry.display.imageUrl}
                  type={getPokemonPrimaryTypeSlug(entry)}
                  className="size-12 rounded-lg"
                />
                <span className="font-medium">
                  {getPokedexDisplayName(entry)}
                </span>
              </div>
            </TableCell>
            <TableCell>
              <PokemonTypeBadges pokemon={entry} />
            </TableCell>
            <TableCell>
              <StatusBadge
                tone={isRequiredPokedexEntry(entry) ? "warning" : "info"}
              >
                {isRequiredPokedexEntry(entry) ? "Required" : "Optional"}
              </StatusBadge>
            </TableCell>
            <TableCell className="min-w-40">
              <PokedexProgressButtons
                isCaught={entry.is_caught}
                isSeen={entry.is_seen}
                playId={playId}
                speciesId={entry.species_id}
              />
            </TableCell>
          </TableRow>
        ))}
      </TableBody>
    </Table>
  );
};
