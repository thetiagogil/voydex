"use client";

import { PageLayout } from "@/shared/components/layout/page-layout";
import { usePlay } from "../hooks/usePlay";
import { usePlayCompletion } from "../hooks/usePlayCompletion";
import { usePlayPokemonTeam } from "../hooks/usePlayPokemonTeam";
import { usePlayTrackingCategories } from "../hooks/usePlayTrackingCategories";
import type { PlayOverview } from "../types";
import { buildPlayBreadcrumbs } from "../utils/build-play-breadcrumbs";
import { CollectiblesSection } from "./collectible/collectibles-section";
import { PlayHeader } from "./play-header";
import { PokedexSection } from "./pokedex/pokedex-section";
import { PokemonTeamSection } from "./pokemon-team/pokemon-team-section";
import { StorySection } from "./story/story-section";

type PlayViewProps = {
  playId: string;
  initialOverview: PlayOverview;
};

export const PlayView = ({ playId, initialOverview }: PlayViewProps) => {
  const { data: playData } = usePlay(playId, {
    initialData: { data: initialOverview.play },
  });
  const { data: pokemonTeam } = usePlayPokemonTeam(playId, {
    initialData: initialOverview.pokemonTeam,
  });
  const { data: trackingCategories } = usePlayTrackingCategories(playId, {
    initialData: initialOverview.storySummary,
  });
  const { data: completion } = usePlayCompletion(playId, {
    initialData: initialOverview.completion,
  });

  const play = playData?.data ?? initialOverview.play;
  const team = pokemonTeam ?? initialOverview.pokemonTeam;
  const stories = trackingCategories ?? initialOverview.storySummary;
  const comp = completion ?? initialOverview.completion;

  const breadcrumbs = buildPlayBreadcrumbs(
    play.game.generation,
    play.game,
    play,
  );
  return (
    <PageLayout breadcrumbs={breadcrumbs}>
      <div className="space-y-8">
        <PlayHeader
          play={play}
          completion={comp?.percentage ?? 0}
          initialPokedexSummary={initialOverview.pokedexSummary}
        />
        <PokemonTeamSection play={play} pokemonTeam={team} />
        <StorySection playId={playId} trackingCategories={stories} />
        <CollectiblesSection
          playId={playId}
          summaries={initialOverview.collectiblesSummary}
        />
        <PokedexSection
          playId={playId}
          pokedexSummary={initialOverview.pokedexSummary}
          play={play}
        />
      </div>
    </PageLayout>
  );
};
