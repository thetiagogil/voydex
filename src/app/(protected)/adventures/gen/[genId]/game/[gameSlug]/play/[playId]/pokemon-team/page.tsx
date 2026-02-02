"use client";

import { PokemonTeamModal } from "@/components/features/play/pokemon-team-modal";
import { PokemonTeamTable } from "@/components/features/play/pokemon-team-table";
import { PageLayout } from "@/components/layout/page-layout";
import { Header } from "@/components/shared/header";
import { Loading } from "@/components/shared/loading";
import { Button } from "@/components/ui/button";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { usePlay } from "@/hooks/gameplay/usePlay";
import { usePlayPokemonTeam } from "@/hooks/gameplay/usePlayPokemonTeam";
import { Archive, ArrowLeft, Plus, Sparkles, Users } from "lucide-react";
import Link from "next/link";
import { use, useState } from "react";

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

  const [activeTab, setActiveTab] = useState("all");
  const [editingPokemon, setEditingPokemon] = useState<PlayPokemon | null>(
    null,
  );
  const [openEditDialog, setOpenEditDialog] = useState(false);
  const [addPosition, setAddPosition] = useState<number | null>(null);

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

  const shinyCount = allPokemon.filter((p) => p.is_shiny).length;
  const generationId = play.data.game.generation.id;

  // Build the back URL using the route params
  const backUrl = `/adventures/gen/${genId}/game/${gameSlug}/play/${playId}`;

  const handleEditClick = (pokemon: PlayPokemon) => {
    setEditingPokemon(pokemon);
    setAddPosition(null);
    setOpenEditDialog(true);
  };

  const handleAddClick = (toTeam: boolean) => {
    setEditingPokemon(null);
    if (toTeam) {
      const nextPosition = teamPokemon.length + 1;
      setAddPosition(nextPosition <= 6 ? nextPosition : 7);
    } else {
      const maxBoxPosition =
        boxPokemon.length > 0
          ? Math.max(...boxPokemon.map((p) => p.position))
          : 6;
      setAddPosition(maxBoxPosition + 1);
    }
    setOpenEditDialog(true);
  };

  const handleCloseEdit = () => {
    setOpenEditDialog(false);
    setEditingPokemon(null);
    setAddPosition(null);
  };

  const displayPokemon =
    activeTab === "team"
      ? teamPokemon
      : activeTab === "box"
        ? boxPokemon
        : allPokemon;

  return (
    <PageLayout>
      <div className="space-y-6">
        {/* Header */}
        <Header
          icon={
            <Button variant="ghost" size="icon" asChild>
              <Link href={backUrl}>
                <ArrowLeft className="h-5 w-5" />
              </Link>
            </Button>
          }
          title={`${play.data.name} - Team`}
          metadata={
            <p className="text-muted-foreground text-sm">
              Manage your Pokémon team and box
            </p>
          }
        />

        {/* Stats bar */}
        <div className="flex flex-wrap items-center gap-4 text-sm">
          <div className="flex items-center gap-2">
            <Users className="text-primary h-4 w-4" />
            <span>
              <span className="font-medium">{teamPokemon.length}/6</span> in
              team
            </span>
          </div>
          <div className="flex items-center gap-2">
            <Archive className="text-muted-foreground h-4 w-4" />
            <span>
              <span className="font-medium">{boxPokemon.length}</span> in box
            </span>
          </div>
          {shinyCount > 0 && (
            <div className="flex items-center gap-2">
              <Sparkles className="h-4 w-4 text-yellow-500" />
              <span>
                <span className="font-medium">{shinyCount}</span> shiny
              </span>
            </div>
          )}
        </div>

        {/* Tabs with table */}
        <div className="rounded-xl border">
          <Tabs value={activeTab} onValueChange={setActiveTab}>
            <div className="flex items-center justify-between gap-4 border-b p-4">
              <TabsList>
                <TabsTrigger value="all" className="px-4">
                  All ({allPokemon.length})
                </TabsTrigger>
                <TabsTrigger value="team" className="px-4">
                  <Users className="mr-1.5 h-3.5 w-3.5" />
                  Team ({teamPokemon.length})
                </TabsTrigger>
                <TabsTrigger value="box" className="px-4">
                  <Archive className="mr-1.5 h-3.5 w-3.5" />
                  Box ({boxPokemon.length})
                </TabsTrigger>
              </TabsList>

              <Button
                size="sm"
                onClick={() => handleAddClick(activeTab !== "box")}
                disabled={activeTab === "team" && teamPokemon.length >= 6}
              >
                <Plus className="mr-1 h-4 w-4" />
                Add Pokémon
              </Button>
            </div>

            <TabsContent value="all" className="mt-0">
              <PokemonTeamTable
                pokemon={displayPokemon}
                onEdit={handleEditClick}
                emptyMessage="No Pokémon caught yet. Add your first one!"
              />
            </TabsContent>

            <TabsContent value="team" className="mt-0">
              <PokemonTeamTable
                pokemon={displayPokemon}
                onEdit={handleEditClick}
                emptyMessage="No Pokémon in your team yet."
              />
            </TabsContent>

            <TabsContent value="box" className="mt-0">
              <PokemonTeamTable
                pokemon={displayPokemon}
                onEdit={handleEditClick}
                emptyMessage="No Pokémon in your box yet."
              />
            </TabsContent>
          </Tabs>
        </div>
      </div>

      <PokemonTeamModal
        openDialog={openEditDialog}
        setOpenDialog={setOpenEditDialog}
        playId={playId}
        generationId={generationId}
        pokemon={editingPokemon}
        position={addPosition}
        team={allPokemon}
        onClose={handleCloseEdit}
      />
    </PageLayout>
  );
}
