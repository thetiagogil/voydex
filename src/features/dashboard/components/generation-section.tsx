"use client";

import { Card } from "@/components/ui/card";
import { ScrollArea } from "@/components/ui/scroll-area";
import type { DashboardGeneration } from "../types";
import { GenerationCard } from "./generation-card";

type GenerationSectionProps = {
  generations: DashboardGeneration[];
};

export const GenerationSection = ({ generations }: GenerationSectionProps) => {
  return (
    <Card className="h-full gap-0 p-0">
      <div className="border-border flex items-center gap-2 border-b p-4">
        <h2 className="text-foreground text-lg font-bold">Generations</h2>
      </div>
      <ScrollArea className="flex-1">
        <div className="flex flex-col gap-4 p-4">
          {generations.map((generation, i) => {
            return <GenerationCard key={i} generation={generation} />;
          })}
        </div>
      </ScrollArea>
    </Card>
  );
};
