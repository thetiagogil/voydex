import { Card } from "@/components/ui/card";

interface PokemonEmptyProps {
  index: number;
  isBox?: boolean;
}

export const PokemonEmpty = ({ index, isBox }: PokemonEmptyProps) => {
  return (
    <Card className="border-muted-foreground/30 flex min-h-[260px] flex-col items-center justify-center gap-2 border-dashed p-3 opacity-40">
      <span className="text-muted-foreground text-sm">
        Slot {isBox ? index + 7 : index + 1}
      </span>
    </Card>
  );
};
