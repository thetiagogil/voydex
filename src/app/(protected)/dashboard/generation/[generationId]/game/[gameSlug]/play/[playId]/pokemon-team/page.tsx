"use client";

import { PokemonTeamContent } from "@/features/play/components/pokemon-team-content";
import { PokemonTeamHeader } from "@/features/play/components/pokemon-team-header";
import { usePlay } from "@/features/play/hooks/usePlay";
import { usePlayPokemonTeam } from "@/features/play/hooks/usePlayPokemonTeam";
import type { PlayPokemon } from "@/features/play/types";
import { PageLayout } from "@/shared/components/layout/page-layout";
import { Loading } from "@/shared/components/loading";
import { use } from "react";

interface PlayPokemonTeamPageProps {
  params: Promise<{
    generationId: string;
    gameSlug: string;
    playId: string;
  }>;
}

export default function PlayPokemonTeamPage({
  params,
}: PlayPokemonTeamPageProps) {
  const { generationId, gameSlug, playId } = use(params);
  const { data: play, isLoading: playLoading } = usePlay(playId);
  const { data: pokemonTeamData, isLoading: pokemonTeamLoading } =
    usePlayPokemonTeam(playId);

  if (playLoading || pokemonTeamLoading) {
    return (
      <PageLayout isLoading>
        <Loading />
      </PageLayout>
    );
  }

  if (!play?.data) {
    return (
      <PageLayout>
        <div className="flex items-center justify-center py-12">
          <p className="text-muted-foreground">Play not found</p>
        </div>
      </PageLayout>
    );
  }

  const allPokemon: PlayPokemon[] = pokemonTeamData || [];
  const teamPokemon = allPokemon
    .filter((p) => p.position <= 6)
    .sort((a, b) => a.position - b.position);
  const boxPokemon = allPokemon
    .filter((p) => p.position > 6)
    .sort((a, b) => a.position - b.position);

  const shinyCount = allPokemon.filter((p) => p.isShiny).length;
  const backUrl = `/dashboard/generation/${generationId}/game/${gameSlug}/play/${playId}`;

  return (
    <PageLayout>
      <div className="space-y-8">
        <PokemonTeamHeader
          play={play.data}
          backUrl={backUrl}
          teamCount={teamPokemon.length}
          boxCount={boxPokemon.length}
          shinyCount={shinyCount}
        />
        <PokemonTeamContent
          play={play.data}
          allPokemon={allPokemon}
          teamPokemon={teamPokemon}
          boxPokemon={boxPokemon}
        />
      </div>
    </PageLayout>
  );
}
