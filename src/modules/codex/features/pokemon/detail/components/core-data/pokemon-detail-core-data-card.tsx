import type { ReactNode } from "react";

import { cn } from "@/shared/utils/cn";
import { PokemonDetailSectionCard } from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-section-card";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import { Separator } from "@/shared/components/ui/separator";
import {
  formatPokemonHeight,
  formatPokemonWeight,
} from "@/modules/reference/features/pokemon/utils/pokemon-formatters";

type PokemonDetailCoreDataCardProps = {
  form: ResolvedPokemonDetailScope["form"];
};

type PokemonDetailCoreDataFieldProps = {
  children: ReactNode;
  className?: string;
  label: string;
};

const PokemonDetailCoreDataField = ({
  children,
  className,
  label,
}: PokemonDetailCoreDataFieldProps) => {
  return (
    <div className={cn("flex min-w-0 flex-1 flex-col gap-1.5", className)}>
      <div className="text-muted-foreground text-xs">{label}</div>
      <div className="min-w-0 text-sm font-medium sm:text-base">{children}</div>
    </div>
  );
};

const PokemonDetailCoreDataSeparator = () => {
  return (
    <>
      <Separator className="bg-line md:hidden" />
      <Separator orientation="vertical" className="bg-line hidden md:block" />
    </>
  );
};

export const PokemonDetailCoreDataCard = ({
  form,
}: PokemonDetailCoreDataCardProps) => {
  return (
    <PokemonDetailSectionCard
      title="Core Data"
      contentClassName="flex flex-col gap-4 md:flex-row md:items-stretch"
      showSeparator
    >
      <PokemonDetailCoreDataField label="Types" className="md:flex-[1.35]">
        <PokemonTypeList
          badgeSize="md"
          className="flex-wrap"
          primaryType={form?.typePair.primaryType ?? null}
          secondaryType={form?.typePair.secondaryType ?? null}
        />
      </PokemonDetailCoreDataField>

      <PokemonDetailCoreDataSeparator />

      <PokemonDetailCoreDataField label="Height">
        {formatPokemonHeight(form?.form.height_decimeters ?? null)}
      </PokemonDetailCoreDataField>

      <PokemonDetailCoreDataSeparator />

      <PokemonDetailCoreDataField label="Weight">
        {formatPokemonWeight(form?.form.weight_hectograms ?? null)}
      </PokemonDetailCoreDataField>

      <PokemonDetailCoreDataSeparator />

      <PokemonDetailCoreDataField label="Introduced">
        {form?.introducedGeneration?.name ?? "Unknown"}
      </PokemonDetailCoreDataField>
    </PokemonDetailSectionCard>
  );
};
