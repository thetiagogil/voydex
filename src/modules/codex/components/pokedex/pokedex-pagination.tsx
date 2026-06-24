import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type {
  PokedexPageFilters,
  PokedexRarityFilter,
} from "@/modules/codex/types";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/lib/utils";

type PokedexPaginationProps = {
  filters: PokedexPageFilters;
  page: number;
  totalPages: number;
};

const buildPokedexHref = (
  filters: {
    generation: string;
    query: string;
    rarity: PokedexRarityFilter;
    type: string;
  },
  page: number,
) => {
  const params = new URLSearchParams();

  if (filters.query) {
    params.set("q", filters.query);
  }

  if (filters.generation) {
    params.set("generation", filters.generation);
  }

  if (filters.type) {
    params.set("type", filters.type);
  }

  if (filters.rarity !== "all") {
    params.set("rarity", filters.rarity);
  }

  if (page > 1) {
    params.set("page", String(page));
  }

  const query = params.toString();

  return query ? `${appRoutes.codexPokemon}?${query}` : appRoutes.codexPokemon;
};

export const PokedexPagination = ({
  filters,
  page,
  totalPages,
}: PokedexPaginationProps) => {
  if (totalPages <= 1) {
    return null;
  }

  return (
    <nav
      aria-label="Pokémon pagination"
      className="flex items-center justify-between gap-3"
    >
      <Link
        href={buildPokedexHref(filters, Math.max(page - 1, 1))}
        aria-disabled={page <= 1}
        className={cn(
          buttonVariants({ variant: "outline" }),
          page <= 1 && "pointer-events-none opacity-50",
        )}
      >
        Previous
      </Link>
      <span className="text-muted-foreground text-sm">
        Page {page} of {totalPages}
      </span>
      <Link
        href={buildPokedexHref(filters, Math.min(page + 1, totalPages))}
        aria-disabled={page >= totalPages}
        className={cn(
          buttonVariants({ variant: "outline" }),
          page >= totalPages && "pointer-events-none opacity-50",
        )}
      >
        Next
      </Link>
    </nav>
  );
};
