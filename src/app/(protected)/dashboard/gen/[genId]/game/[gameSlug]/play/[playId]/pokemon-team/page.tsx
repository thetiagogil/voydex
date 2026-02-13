"use client";

import { PokemonTeamContent } from "@/components/features/pokemon-team/pokemon-team-content";
import { PokemonTeamHeader } from "@/components/features/pokemon-team/pokemon-team-header";
import { PageLayout } from "@/components/layout/page-layout";
import { Loading } from "@/components/shared/loading";
import { usePlay } from "@/hooks/gameplay/usePlay";
import { usePlayPokemonTeam } from "@/hooks/gameplay/usePlayPokemonTeam";
import type { PlayPokemon } from "@/types/play";
import { use } from "react";

interface PlayPokemonTeamPageProps {
  params: Promise<{
    genId: string;
    gameSlug: string;
    playId: string;
  }>;
}

export default function PlayPokemonTeamPage({
  params,
}: PlayPokemonTeamPageProps) {
  const { genId, gameSlug, playId } = use(params);
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
  const backUrl = `/dashboard/gen/${genId}/game/${gameSlug}/play/${playId}`;

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
