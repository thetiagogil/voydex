"use client";

import { CollectiblesSection } from "@/components/features/play/collectibles-section";
import { PlayHeader } from "@/components/features/play/play-header";
import { PokedexSection } from "@/components/features/play/pokedex-section";
import { PokemonTeamSection } from "@/components/features/play/pokemon-team-section";
import { StorySection } from "@/components/features/play/story-section";

import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { usePlay } from "@/hooks/gameplay/usePlay";
import { usePlayCollectibles } from "@/hooks/gameplay/usePlayCollectibles";
import { usePlayPokedex } from "@/hooks/gameplay/usePlayPokedex";
import { usePlayPokemonTeam } from "@/hooks/gameplay/usePlayPokemonTeam";
import { usePlayTrackingCategories } from "@/hooks/gameplay/usePlayTrackingCategories";
import { use } from "react";

interface PlayPageProps {
  params: Promise<{
    genId: string;
    gameSlug: string;
    playId: string;
  }>;
}

export default function PlayPage({ params }: PlayPageProps) {
  const { genId, gameSlug, playId } = use(params);
  const {
    data: play,
    isLoading: playLoading,
    error: playError,
  } = usePlay(playId);
  const { data: pokemonTeamData, isLoading: pokemonTeamLoading } =
    usePlayPokemonTeam(playId);
  const { data: trackingCategoriesData, isLoading: trackingCategoriesLoading } =
    usePlayTrackingCategories(playId);
  const { data: pokedexData, isLoading: pokedexLoading } =
    usePlayPokedex(playId);
  const { data: collectiblesData, isLoading: collectiblesLoading } =
    usePlayCollectibles(playId);

  if (
    playLoading ||
    pokemonTeamLoading ||
    trackingCategoriesLoading ||
    pokedexLoading ||
    collectiblesLoading
  ) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (playError || !play?.data) {
    return (
      <PageLayout>
        <div className="flex items-center justify-center py-12">
          <p className="text-muted-foreground">Play not found</p>
        </div>
      </PageLayout>
    );
  }

  return (
    <PageLayout>
      <div className="space-y-8">
        <PlayHeader play={play.data} />
        <PokemonTeamSection
          play={play.data}
          genId={genId}
          gameSlug={gameSlug}
          pokemonTeam={pokemonTeamData}
        />
        <StorySection
          playId={playId}
          trackingCategories={trackingCategoriesData}
        />
        <PokedexSection playId={playId} pokedexEntries={pokedexData} />
        <CollectiblesSection playId={playId} collectibles={collectiblesData} />
      </div>
    </PageLayout>
  );
}
