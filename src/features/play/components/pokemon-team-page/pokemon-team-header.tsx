"use client";

import type { Play } from "@/features/play/types";
import { Header } from "@/shared/components/header";
import { Icon } from "@/shared/components/icon";
import { QuickInfo } from "@/shared/components/quick-info";
import { Button } from "@/shared/components/ui/button";
import { ArrowLeft } from "lucide-react";
import Link from "next/link";

type PokemonTeamHeaderProps = {
  play: Play;
  backUrl: string;
  teamCount: number;
  boxCount: number;
  shinyCount: number;
};

export const PokemonTeamHeader = ({
  play,
  backUrl,
  teamCount,
  boxCount,
  shinyCount,
}: PokemonTeamHeaderProps) => {
  return (
    <Header
      icon={
        <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
          <Icon type="pokemon" size={36} />
        </div>
      }
      title="Pokémon Team"
      metadata={
        <div className="flex flex-wrap items-center gap-2 text-sm">
          <QuickInfo
            icon={<Icon type="play" />}
            value={play.name}
            title="Current play game"
            variant="primary"
          />
          <span>&middot;</span>
          <QuickInfo
            icon={<Icon type="user" />}
            value={`${teamCount}/6 in team`}
            title="Pokemon in current team"
          />
          <span>&middot;</span>
          <QuickInfo
            icon={<Icon type="box" />}
            value={`${boxCount} in box`}
            title="Pokemon in box storage"
          />
          {shinyCount > 0 ? (
            <>
              <span>&middot;</span>
              <QuickInfo
                icon={<Icon type="shiny" />}
                value={`${shinyCount} shiny`}
                title="Shiny Pokemon caught"
                variant="yellow"
              />
            </>
          ) : null}
        </div>
      }
      actions={
        <Button variant="outline" asChild>
          <Link href={backUrl}>
            <ArrowLeft className="h-5 w-5" />
            Back
          </Link>
        </Button>
      }
    />
  );
};
