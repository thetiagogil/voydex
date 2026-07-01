import type { ReactNode } from "react";

import { cn } from "@/lib/utils";
import { PokemonTypeList } from "@/modules/codex/shared/components/pokemon-type-list";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-scope";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";
import { Separator } from "@/shared/components/ui/separator";
import {
  formatPokemonHeight,
  formatPokemonWeight,
} from "@/shared/domain/pokemon/pokemon-formatters";

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
      <Separator className="bg-app-surface-border/60 md:hidden" />
      <Separator
        orientation="vertical"
        className="bg-app-surface-border/60 hidden md:block"
      />
    </>
  );
};

export const PokemonDetailCoreDataCard = ({
  form,
}: PokemonDetailCoreDataCardProps) => {
  return (
    <Card size="sm" className="bg-card/76 gap-0 py-0 backdrop-blur-xl">
      <CardHeader className="px-4 py-3">
        <CardTitle className="text-muted-foreground flex items-center gap-2 text-xs font-medium tracking-wider uppercase">
          <AppIcon
            icon={appIcons.product.details}
            size="sm"
            className="text-primary"
            aria-hidden
          />
          Core Data
        </CardTitle>
      </CardHeader>
      <Separator className="bg-app-surface-border/60" />
      <CardContent className="flex flex-col gap-4 px-4 py-4 md:flex-row md:items-stretch">
        <PokemonDetailCoreDataField label="Types" className="md:flex-[1.35]">
          <PokemonTypeList
            badgeSize="md"
            className="flex-nowrap"
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
      </CardContent>
    </Card>
  );
};
