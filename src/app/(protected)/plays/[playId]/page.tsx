"use client";

import { CollectiblesSection } from "@/features/play/components/collectibles-section";
import { PlayHeader } from "@/features/play/components/play-header";
import { PokedexSection } from "@/features/play/components/pokedex-section";
import { PokemonTeamSection } from "@/features/play/components/pokemon-team-section";
import { StorySection } from "@/features/play/components/story-section";

import { usePlay, useUpdatePlay } from "@/features/play/hooks/usePlay";
import { usePlayCompletion } from "@/features/play/hooks/usePlayCompletion";
import { usePlayOverview } from "@/features/play/hooks/usePlayOverview";
import { usePlayPokemonTeam } from "@/features/play/hooks/usePlayPokemonTeam";
import { usePlayTrackingCategories } from "@/features/play/hooks/usePlayTrackingCategories";
import type { PlayOverview } from "@/features/play/types";
import { buildPlayBreadcrumbs } from "@/features/play/utils/build-play-breadcrumbs";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { Loading } from "@/shared/components/loading";
import { use, useEffect, useRef } from "react";

// =============================================================================
// PLAY PAGE — overview wrapper (loading gate)
// =============================================================================

interface PlayPageProps {
  params: Promise<{
    playId: string;
  }>;
}

export default function PlayPage({ params }: PlayPageProps) {
  const { playId } = use(params);

  // Overview is the ONLY API call on initial load
  // It seeds individual slice caches before PlayPageContent mounts
  const { data: overview, isLoading, error } = usePlayOverview(playId);

  if (isLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (error || !overview) {
    return (
      <PageLayout>
        <div className="flex items-center justify-center py-12">
          <p className="text-muted-foreground">Play not found</p>
        </div>
      </PageLayout>
    );
  }

  return <PlayPageContent playId={playId} overview={overview} />;
}

// =============================================================================
// PLAY PAGE CONTENT — mounts after overview has seeded caches
// Slice hooks read from seeded caches (staleTime: Infinity → no auto-refetch)
// Mutations invalidate slice keys → hooks refetch → UI updates
// =============================================================================

function PlayPageContent({
  playId,
  overview,
}: {
  playId: string;
  overview: PlayOverview;
}) {
  // Slice hooks read from seeded caches — NO extra API calls
  const { data: playData } = usePlay(playId);
  const { data: pokemonTeam } = usePlayPokemonTeam(playId);
  const { data: trackingCategories } = usePlayTrackingCategories(playId);
  const { data: completion } = usePlayCompletion(playId);

  // Fall back to overview data for first render (before setQueryData runs)
  const play = playData?.data ?? overview.play;
  const team = pokemonTeam ?? overview.pokemonTeam;
  const stories = trackingCategories ?? overview.storySummary;
  const comp = completion ?? overview.completion;

  const updatePlay = useUpdatePlay();
  const updatePlayRef = useRef(updatePlay);
  updatePlayRef.current = updatePlay;
  const autoStatusRef = useRef(false);

  const currentCompletion = comp?.percentage ?? 0;

  // Auto-complete at 100% / auto-revert if drops below 100%
  useEffect(() => {
    if (!comp || !play) return;

    const currentStatus = play.status.slug;
    const pid = play.id;

    if (comp.isFullyComplete && currentStatus !== "completed") {
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
    } else if (!comp.isFullyComplete && currentStatus === "completed") {
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
  }, [comp, play]);

  const breadcrumbs = buildPlayBreadcrumbs(
    play.game.generation,
    play.game,
    play,
  );

  return (
    <PageLayout breadcrumbs={breadcrumbs}>
      <div className="space-y-8">
        <PlayHeader play={play} completion={currentCompletion} />
        <PokemonTeamSection play={play} pokemonTeam={team} />
        <StorySection playId={playId} trackingCategories={stories} />
        <CollectiblesSection
          playId={playId}
          summaries={overview.collectiblesSummary}
        />
        <PokedexSection
          playId={playId}
          pokedexSummary={overview.pokedexSummary}
          play={play}
        />
      </div>
    </PageLayout>
  );
}
