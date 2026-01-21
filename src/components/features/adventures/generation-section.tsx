"use client";

import type { GenerationWithUserStats } from "@/types/dashboard";
import { GenerationRows } from "./generation-rows";

interface GenerationSectionProps {
  generations: GenerationWithUserStats[];
}

export const GenerationSection = ({ generations }: GenerationSectionProps) => {
  return (
    <div className="flex flex-col space-y-4">
      <h2 className="text-xl font-semibold">Generations</h2>

      <div className="flex-1 overflow-y-auto pr-2">
        <GenerationRows generations={generations} />
      </div>
    </div>
  );
};
