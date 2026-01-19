import { Header } from "@/components/shared/header";
import { Badge } from "@/components/ui/badge";

export const GenHeader = ({ gen }: { gen: Generation }) => {
  // Build metadata text
  const metadata = `${gen.start_year} - ${gen.end_year || "Present"}`;
  // Add user stats if available (general completion only, not category-specific)

  return (
    <Header
      title={gen.name}
      metadata={metadata}
      info={
        <Badge variant="outline-primary">{gen.new_pokemon_count} Pokémon</Badge>
      }
    />
  );
};
