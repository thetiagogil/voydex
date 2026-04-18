"use client";

import {
  SectionCard,
  SectionCardHeader,
  SectionCardScrollContent,
} from "@/shared/components/section-card";
import type { DashboardGeneration } from "../types";
import { GenerationCard } from "./generation-card";

type GenerationsSectionProps = {
  generations: DashboardGeneration[];
};

export const GenerationsSection = ({
  generations,
}: GenerationsSectionProps) => {
  return (
    <SectionCard className="h-full">
      <SectionCardHeader title="Generations" />
      <SectionCardScrollContent contentClassName="flex flex-col gap-4">
        {generations.map((generation, i) => {
          return <GenerationCard key={i} generation={generation} />;
        })}
      </SectionCardScrollContent>
    </SectionCard>
  );
};
