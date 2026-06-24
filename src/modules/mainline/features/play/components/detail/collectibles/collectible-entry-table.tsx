import type { MainlinePlayCollectibleDetail } from "@/modules/mainline/shared/types/mainline.types";
import {
  getEntryLocation,
  getEntryNumber,
} from "@/modules/mainline/features/play/components/detail/collectibles/collectible-groups";
import { CollectibleProgressButton } from "@/modules/mainline/features/play/components/detail/actions/collectible-progress-button";
import { StatusBadge } from "@/shared/components/status-badge";
import { formatPokemonDisplayText } from "@/shared/domain/pokemon/display-text";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/shared/components/ui/table";

type CollectibleEntryTableProps = {
  entries: MainlinePlayCollectibleDetail[];
  playId: string;
};

export const CollectibleEntryTable = ({
  entries,
  playId,
}: CollectibleEntryTableProps) => {
  return (
    <Table>
      <TableHeader>
        <TableRow>
          <TableHead>#</TableHead>
          <TableHead>Entry</TableHead>
          <TableHead>Location</TableHead>
          <TableHead>Hint</TableHead>
          <TableHead>Completion</TableHead>
          <TableHead className="text-right">Progress</TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {entries.map((entry) => (
          <TableRow key={entry.collectible_entry_id}>
            <TableCell>{getEntryNumber(entry)}</TableCell>
            <TableCell className="font-medium">
              {formatPokemonDisplayText(
                entry.collectible_entry_name ?? "Collectible entry",
              )}
            </TableCell>
            <TableCell>
              <StatusBadge tone="info">{getEntryLocation(entry)}</StatusBadge>
            </TableCell>
            <TableCell className="text-muted-foreground max-w-72 whitespace-normal">
              {formatPokemonDisplayText(
                entry.description ?? "No hint available.",
              )}
            </TableCell>
            <TableCell>
              <StatusBadge
                tone={entry.is_included_in_completion ? "success" : "neutral"}
              >
                {entry.is_included_in_completion ? "Included" : "Excluded"}
              </StatusBadge>
            </TableCell>
            <TableCell className="min-w-40">
              <CollectibleProgressButton
                collectibleEntryId={entry.collectible_entry_id}
                isCollected={entry.is_collected}
                playId={playId}
              />
            </TableCell>
          </TableRow>
        ))}
      </TableBody>
    </Table>
  );
};
