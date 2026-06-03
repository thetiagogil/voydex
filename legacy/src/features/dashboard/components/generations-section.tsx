"use client";

import {
  SectionCard,
  SectionCardHeader,
  SectionCardScrollContent,
} from "@/shared/components/section-card";
import type { DashboardGeneration } from "../types";
import { GenerationCard } from "./generation-card";

const formatCountLabel = (count: number, singular: string, plural: string) => {
  return `${count} ${count === 1 ? singular : plural}`;
};

type GenerationsSectionProps = {
  generations: DashboardGeneration[];
};

export const GenerationsSection = ({
  generations,
}: GenerationsSectionProps) => {
  const totalGenerations = generations.length;
  const generationsWithPlays = generations.filter(
    (generation) => generation.userStats.totalPlays > 0,
  ).length;
  const generationsWithActivePlays = generations.filter(
    (generation) => generation.userStats.activePlays > 0,
  ).length;
  const generationsWithCompletedPlays = generations.filter(
    (generation) => generation.userStats.completedPlays > 0,
  ).length;

  const description =
    generationsWithPlays === 0
      ? `No tracked plays yet across ${formatCountLabel(totalGenerations, "generation", "generations")}.`
      : `Plays in ${generationsWithPlays} of ${totalGenerations} generations, with ${formatCountLabel(generationsWithActivePlays, "active generation", "active generations")} and ${formatCountLabel(generationsWithCompletedPlays, "completed generation", "completed generations")}.`;

  return (
    <SectionCard className="h-full">
      <SectionCardHeader title="Generations" description={description} />
      <SectionCardScrollContent contentClassName="flex flex-col gap-4">
        {generations.map((generation, i) => {
          return <GenerationCard key={i} generation={generation} />;
        })}
      </SectionCardScrollContent>
    </SectionCard>
  );
};
