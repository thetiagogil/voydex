import { ArrowRightIcon } from "lucide-react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { getGenerationsPageData } from "@/modules/codex/data/queries";
import type { GenerationCard } from "@/modules/codex/types";
import { Badge } from "@/shared/components/ui/badge";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

function GenerationSummaryCard({ card }: { card: GenerationCard }) {
  return (
    <Link
      href={appRoutes.codexGeneration(card.generation.id)}
      className="group"
    >
      <Card className="group-hover:border-primary/40 group-hover:bg-card/90 h-full transition-colors">
        <CardHeader>
          <div className="flex items-start justify-between gap-3">
            <div>
              <CardDescription>
                Started in {card.generation.start_year}
              </CardDescription>
              <CardTitle>{card.generation.name}</CardTitle>
            </div>
            <ArrowRightIcon
              className="text-muted-foreground size-4 transition-transform group-hover:translate-x-0.5"
              aria-hidden
            />
          </div>
        </CardHeader>
        <CardContent className="flex flex-wrap gap-2">
          <Badge variant="secondary">{card.gameCount} games</Badge>
          <Badge variant="outline">
            {card.speciesCount} Pokemon introduced
          </Badge>
        </CardContent>
      </Card>
    </Link>
  );
}

export async function GenerationsPage() {
  const data = await getGenerationsPageData();

  return (
    <CodexPageShell
      title="Generations"
      description="Browse mainline Pokemon generations and the games seeded for each era."
    >
      <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
        {data.generations.map((generation) => (
          <GenerationSummaryCard
            key={generation.generation.id}
            card={generation}
          />
        ))}
      </div>
    </CodexPageShell>
  );
}
