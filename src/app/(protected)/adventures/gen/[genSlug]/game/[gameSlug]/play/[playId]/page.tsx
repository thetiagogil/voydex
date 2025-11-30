"use client";

import { PlayHeader } from "@/components/features/play/play-header";
import { PlayPokemonTeam } from "@/components/features/play/play-pokemon-team";
import { PlayProgressCategories } from "@/components/features/play/play-progress-categories";
import { PageLayout } from "@/components/layout/page-layout";
import { Spinner } from "@/components/ui/spinner";
import { usePlay } from "@/hooks/gameplay/usePlay";
import { usePlayPokemonTeam } from "@/hooks/gameplay/usePlayPokemonTeam";
import { usePlayProgressCategories } from "@/hooks/gameplay/usePlayProgressCategories";
import { use } from "react";

interface PlayPageProps {
  params: Promise<{
    genSlug: string;
    gameSlug: string;
    playId: string;
  }>;
}

export default function PlayPage({ params }: PlayPageProps) {
  const { playId } = use(params);
  const {
    data: playData,
    isLoading: playLoading,
    error: playError,
  } = usePlay(playId);
  const { data: pokemonTeamData, isLoading: pokemonTeamLoading } =
    usePlayPokemonTeam(playId);
  const { data: progressCategoriesData, isLoading: progressCategoriesLoading } =
    usePlayProgressCategories(playId);

  if (playLoading || pokemonTeamLoading || progressCategoriesLoading) {
    return (
      <PageLayout isLoading>
        <Spinner className="size-6" />
      </PageLayout>
    );
  }

  if (playError || !playData?.data) {
    return (
      <PageLayout>
        <div className="flex items-center justify-center py-12">
          <p className="text-muted-foreground">Play not found</p>
        </div>
      </PageLayout>
    );
  }

  const generationId = playData.data.game.generation.id;

  return (
    <PageLayout>
      <div className="space-y-8">
        <PlayHeader play={playData} />
        <PlayPokemonTeam
          playId={playId}
          generationId={generationId}
          pokemonTeam={pokemonTeamData}
        />
        <PlayProgressCategories
          playId={playId}
          progressCategories={progressCategoriesData}
        />
      </div>
    </PageLayout>
  );
}
