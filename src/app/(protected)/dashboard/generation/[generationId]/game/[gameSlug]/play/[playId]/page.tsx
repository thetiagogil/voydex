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
import { usePlayCompletion } from "@/hooks/gameplay/usePlayCompletion";
import { usePlayPokedex } from "@/hooks/gameplay/usePlayPokedex";
import { usePlayPokemonTeam } from "@/hooks/gameplay/usePlayPokemonTeam";
import { usePlayTrackingCategories } from "@/hooks/gameplay/usePlayTrackingCategories";
import { usePlayStatuses, useUpdatePlay } from "@/hooks/gameplay/usePlays";
import { use, useCallback, useEffect, useRef } from "react";

// =============================================================================
// PLAY PAGE
// =============================================================================

interface PlayPageProps {
  params: Promise<{
    generationId: string;
    gameSlug: string;
    playId: string;
  }>;
}

export default function PlayPage({ params }: PlayPageProps) {
  const { generationId, gameSlug, playId } = use(params);
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
  const { data: completionData } = usePlayCompletion(playId);
  const { data: statuses = [] } = usePlayStatuses();
  const updatePlay = useUpdatePlay();
  const updatePlayRef = useRef(updatePlay);
  updatePlayRef.current = updatePlay;
  const autoStatusRef = useRef(false);

  const currentCompletion = completionData?.percentage ?? 0;

  // Stable status lookup
  const getStatusId = useCallback(
    (slug: string) => statuses.find((s) => s.slug === slug)?.id,
    [statuses],
  );

  // Auto-complete at 100% / auto-revert if drops below 100%
  // Uses server-computed isFullyComplete (exact card completion, no rounding)
  useEffect(() => {
    if (!completionData || !play?.data || statuses.length === 0) return;

    const currentStatus = play.data.status.slug;
    const pid = play.data.id;

    if (completionData.isFullyComplete && currentStatus !== "completed") {
      const statusId = getStatusId("completed");
      if (statusId && !autoStatusRef.current) {
        autoStatusRef.current = true;
        updatePlayRef.current
          .mutateAsync({ playId: pid, updates: { status_id: statusId } })
          .finally(() => {
            autoStatusRef.current = false;
          });
      }
    } else if (
      !completionData.isFullyComplete &&
      currentStatus === "completed"
    ) {
      const statusId = getStatusId("active");
      if (statusId && !autoStatusRef.current) {
        autoStatusRef.current = true;
        updatePlayRef.current
          .mutateAsync({ playId: pid, updates: { status_id: statusId } })
          .finally(() => {
            autoStatusRef.current = false;
          });
      }
    }
  }, [completionData, play?.data, statuses, getStatusId]);

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
        <PlayHeader play={play.data} completion={currentCompletion} />
        <PokemonTeamSection
          play={play.data}
          generationId={generationId}
          gameSlug={gameSlug}
          pokemonTeam={pokemonTeamData}
        />
        <StorySection
          playId={playId}
          trackingCategories={trackingCategoriesData}
        />
        <CollectiblesSection playId={playId} collectibles={collectiblesData} />
        <PokedexSection
          playId={playId}
          pokedexEntries={pokedexData}
          play={play.data}
        />
      </div>
    </PageLayout>
  );
}
