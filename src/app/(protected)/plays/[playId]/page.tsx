"use client";

import { CollectiblesSection } from "@/features/play/components/collectibles-section";
import { PlayHeader } from "@/features/play/components/play-header";
import { PokedexSection } from "@/features/play/components/pokedex-section";
import { PokemonTeamSection } from "@/features/play/components/pokemon-team-section";
import { StorySection } from "@/features/play/components/story-section";

import { usePlay, useUpdatePlay } from "@/features/play/hooks/usePlay";
import { usePlayCollectibles } from "@/features/play/hooks/usePlayCollectibles";
import { usePlayCompletion } from "@/features/play/hooks/usePlayCompletion";
import { usePlayOverview } from "@/features/play/hooks/usePlayOverview";
import { usePlayPokedex } from "@/features/play/hooks/usePlayPokedex";
import { usePlayPokemonTeam } from "@/features/play/hooks/usePlayPokemonTeam";
import { usePlayTrackingCategories } from "@/features/play/hooks/usePlayTrackingCategories";
import { buildPlayBreadcrumbs } from "@/features/play/utils/build-play-breadcrumbs";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { Loading } from "@/shared/components/loading";
import { use, useEffect, useRef } from "react";

// =============================================================================
// PLAY PAGE
// =============================================================================

interface PlayPageProps {
  params: Promise<{
    playId: string;
  }>;
}

export default function PlayPage({ params }: PlayPageProps) {
  const { playId } = use(params);

  // Overview fetches once and seeds all individual slice caches
  const { isLoading: overviewLoading, error: overviewError } =
    usePlayOverview(playId);

  // Read live data from individual slice hooks (seeded by overview, refetchable by mutations)
  const { data: playData } = usePlay(playId);
  const { data: pokemonTeam } = usePlayPokemonTeam(playId);
  const { data: trackingCategories } = usePlayTrackingCategories(playId);
  const { data: collectibles } = usePlayCollectibles(playId);
  const { data: pokedexEntries } = usePlayPokedex(playId);
  const { data: completionData } = usePlayCompletion(playId);

  const play = playData?.data;

  const updatePlay = useUpdatePlay();
  const updatePlayRef = useRef(updatePlay);
  updatePlayRef.current = updatePlay;
  const autoStatusRef = useRef(false);

  const completion = completionData;
  const currentCompletion = completion?.percentage ?? 0;

  // Auto-complete at 100% / auto-revert if drops below 100%
  useEffect(() => {
    if (!completion || !play) return;

    const currentStatus = play.status.slug;
    const pid = play.id;

    if (completion.isFullyComplete && currentStatus !== "completed") {
      if (!autoStatusRef.current) {
        autoStatusRef.current = true;
        updatePlayRef.current
          .mutateAsync({
            playId: pid,
            updates: { status_slug: "completed" },
          })
          .finally(() => {
            autoStatusRef.current = false;
          });
      }
    } else if (!completion.isFullyComplete && currentStatus === "completed") {
      if (!autoStatusRef.current) {
        autoStatusRef.current = true;
        updatePlayRef.current
          .mutateAsync({
            playId: pid,
            updates: { status_slug: "active" },
          })
          .finally(() => {
            autoStatusRef.current = false;
          });
      }
    }
  }, [completion, play]);

  if (overviewLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (overviewError || !play) {
    return (
      <PageLayout>
        <div className="flex items-center justify-center py-12">
          <p className="text-muted-foreground">Play not found</p>
        </div>
      </PageLayout>
    );
  }

  const breadcrumbs = buildPlayBreadcrumbs(
    play.game.generation,
    play.game,
    play,
  );

  return (
    <PageLayout breadcrumbs={breadcrumbs}>
      <div className="space-y-8">
        <PlayHeader play={play} completion={currentCompletion} />
        <PokemonTeamSection play={play} pokemonTeam={pokemonTeam} />
        <StorySection playId={playId} trackingCategories={trackingCategories} />
        <CollectiblesSection playId={playId} collectibles={collectibles} />
        <PokedexSection
          playId={playId}
          pokedexEntries={pokedexEntries}
          play={play}
        />
      </div>
    </PageLayout>
  );
}
