"use client";

import { Button } from "@/components/ui/button";
import { type GenerationPlayData } from "@/lib/mock-data/adventures";
import { LayoutGrid, List } from "lucide-react";
import { useState } from "react";
import { GenerationCards } from "./generation-cards";
import { GenerationRows } from "./generation-rows";

interface GenerationSectionProps {
  generations: GenerationPlayData[];
}

export const GenerationSection = ({ generations }: GenerationSectionProps) => {
  const [viewMode, setViewMode] = useState<"rows" | "cards">("rows");

  return (
    <div className="space-y-4">
      <div className="flex items-center justify-between">
        <h2 className="text-2xl font-semibold">Generations</h2>
        <div className="flex gap-2">
          <Button
            variant={
              viewMode === "rows" ? "outline-primary" : "outline-secondary"
            }
            size="sm"
            onClick={() => setViewMode("rows")}
          >
            <List className="h-4 w-4" />
          </Button>
          <Button
            variant={
              viewMode === "cards" ? "outline-primary" : "outline-secondary"
            }
            size="sm"
            onClick={() => setViewMode("cards")}
          >
            <LayoutGrid className="h-4 w-4" />
          </Button>
        </div>
      </div>

      {viewMode === "rows" && <GenerationRows generations={generations} />}
      {viewMode === "cards" && <GenerationCards generations={generations} />}
    </div>
  );
};
