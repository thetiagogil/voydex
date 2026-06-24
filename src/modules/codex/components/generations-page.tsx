import { appRoutes } from "@/config/routes";
import {
  CodexBrowseMeta,
  CodexResourceCard,
  CodexResourceGrid,
} from "@/modules/codex/components/codex-browse";
import { CodexPageShell } from "@/modules/codex/components/codex-page-shell";
import { getGenerationsPageData } from "@/modules/codex/data/generation-queries";
import type { GenerationCard } from "@/modules/codex/types";
import { Badge } from "@/shared/components/ui/badge";

const GenerationSummaryCard = ({ card }: { card: GenerationCard }) => {
  return (
    <CodexResourceCard
      href={appRoutes.codexGeneration(card.generation.id)}
      description={`Started in ${card.generation.start_year}`}
      title={card.generation.name}
      contentClassName="flex-row flex-wrap"
    >
      <Badge variant="secondary">{card.gameCount} games</Badge>
      <Badge variant="outline">{card.speciesCount} Pokemon introduced</Badge>
    </CodexResourceCard>
  );
};

export const GenerationsPage = async () => {
  const data = await getGenerationsPageData();
  return (
    <CodexPageShell
      title="Generations"
      description="Browse mainline Pokemon generations and the games seeded for each era."
    >
      <CodexBrowseMeta>
        {data.generations.length} generations visible
      </CodexBrowseMeta>
      <CodexResourceGrid>
        {data.generations.map((generation) => (
          <GenerationSummaryCard
            key={generation.generation.id}
            card={generation}
          />
        ))}
      </CodexResourceGrid>
    </CodexPageShell>
  );
};
