"use client";

import { Header } from "@/shared/components/header";
import { Icon } from "@/shared/components/icon";
import { QuickInfo } from "@/shared/components/quick-info";
import { Button } from "@/shared/components/ui/button";
import { ArrowLeft } from "lucide-react";
import Link from "next/link";
import type { Play } from "../types";

interface PokemonTeamHeaderProps {
  play: Play;
  backUrl: string;
  teamCount: number;
  boxCount: number;
  shinyCount: number;
}

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
        <Button variant="ghost" size="icon" asChild>
          <Link href={backUrl}>
            <ArrowLeft className="h-5 w-5" />
          </Link>
        </Button>
      }
      title={`${play.name} - Team`}
      metadata={
        <div className="flex flex-wrap items-center gap-2 text-sm">
          <QuickInfo
            icon={<Icon type="user" />}
            value={`${teamCount}/6 in team`}
            title="Pokemon in current team"
            variant="primary"
          />
          <span>•</span>
          <QuickInfo
            icon={<Icon type="box" />}
            value={`${boxCount} in box`}
            title="Pokemon in box storage"
          />
          {shinyCount > 0 && (
            <>
              <span>•</span>
              <QuickInfo
                icon={<Icon type="shiny" />}
                value={`${shinyCount} shiny`}
                title="Shiny Pokemon caught"
              />
            </>
          )}
        </div>
      }
    />
  );
};
