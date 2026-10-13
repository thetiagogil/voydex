import type { GamesShelfSection } from "@/modules/codex/features/games/browse/data/games-browse-model";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/codex/features/games/shared/components/game-shelf-card";
import { RangeHeading } from "@/shared/components/range-heading";

const EAGER_COVER_COUNT = 6;

type GamesShelfProps = {
  sections: GamesShelfSection[];
};

/* The cover shelf: one Codex list range per generation or region, then the covers. */
export const GamesShelf = ({ sections }: GamesShelfProps) => {
  return (
    <div className="mt-6 flex flex-col gap-7.5">
      {sections.map((section, sectionIndex) => {
        const titleId = `games-section-${section.key}`;

        return (
          <section
            key={section.key}
            aria-labelledby={titleId}
            className="min-w-0"
          >
            <RangeHeading
              title={section.label}
              titleId={titleId}
              count={section.summary}
            />
            <GameShelfGrid className="mt-4.5">
              {section.games.map((card, cardIndex) => (
                <GameShelfCard
                  key={card.game.id}
                  card={card}
                  eager={sectionIndex === 0 && cardIndex < EAGER_COVER_COUNT}
                />
              ))}
            </GameShelfGrid>
          </section>
        );
      })}
    </div>
  );
};
