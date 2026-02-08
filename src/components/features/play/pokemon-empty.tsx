import { Icon } from "@/components/shared/icon";
import { Card } from "@/components/ui/card";

interface PokemonEmptyProps {
  index: number;
}

export const PokemonEmpty = ({ index }: PokemonEmptyProps) => {
  return (
    <Card className="border-muted-foreground/30 flex min-h-[240px] flex-col items-center justify-center gap-2 border-dashed p-3 opacity-40">
      <div className="bg-muted flex h-12 w-12 items-center justify-center rounded-full">
        <Icon type="add" size={20} className="text-muted-foreground" />
      </div>
      <span className="text-muted-foreground text-sm">Slot {index + 1}</span>
    </Card>
  );
};
