import type { GamesShelfSection } from "@/modules/codex/features/games/browse/data/games-browse-model";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/codex/features/games/shared/components/game-shelf-card";
import { CodexGenerationSection } from "@/modules/codex/shared/components/codex-generation-section";

const EAGER_COVER_COUNT = 6;

type GamesShelfProps = {
  sections: GamesShelfSection[];
};

/* The cover shelf: one Codex list group per generation or region, then the covers. */
export const GamesShelf = ({ sections }: GamesShelfProps) => {
  return (
    <div className="mt-6 flex flex-col gap-7.5">
      {sections.map((section, sectionIndex) => {
        return (
          <CodexGenerationSection
            key={section.key}
            title={section.label}
            titleId={`games-section-${section.key}`}
            meta={section.summary}
          >
            <GameShelfGrid>
              {section.games.map((card, cardIndex) => (
                <GameShelfCard
                  key={card.game.id}
                  card={card}
                  eager={sectionIndex === 0 && cardIndex < EAGER_COVER_COUNT}
                  tiltCover
                />
              ))}
            </GameShelfGrid>
          </CodexGenerationSection>
        );
      })}
    </div>
  );
};
