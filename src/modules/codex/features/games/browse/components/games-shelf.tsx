import type { GamesShelfSection } from "@/modules/codex/features/games/browse/data/games-browse-model";
import {
  GameShelfCard,
  GameShelfGrid,
} from "@/modules/reference/features/games/components/game-shelf-card";
import { appRoutes } from "@/config/routes";
import { getGameShelfCardGame } from "@/modules/reference/reference-data";
import { RangeHeading } from "@/shared/components/range-heading";

const EAGER_COVER_COUNT = 6;

type GamesShelfProps = {
  sections: GamesShelfSection[];
};

/*
 * The cover shelf: one Codex list range per generation or region, then the
 * covers; ungrouped, the one section is just the covers.
 */
export const GamesShelf = ({ sections }: GamesShelfProps) => {
  return (
    <div className="mt-6 flex flex-col gap-7.5">
      {sections.map((section, sectionIndex) => {
        const titleId = `games-section-${section.key}`;

        return (
          <section
            key={section.key}
            aria-labelledby={section.label ? titleId : undefined}
            aria-label={section.label ? undefined : "Games"}
            className="min-w-0"
          >
            {section.label ? (
              <RangeHeading
                title={section.label}
                titleId={titleId}
                count={section.summary}
              />
            ) : null}
            <GameShelfGrid className={section.label ? "mt-4.5" : undefined}>
              {section.games.map((card, cardIndex) => (
                <GameShelfCard
                  key={card.game.id}
                  game={getGameShelfCardGame(card)}
                  href={appRoutes.codexVersionGroup(
                    card.versionGroup.slug,
                    card.game.slug,
                  )}
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
