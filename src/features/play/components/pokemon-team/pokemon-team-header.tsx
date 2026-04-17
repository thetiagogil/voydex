"use client";

import { Icon } from "@/shared/components/icon";
import { QuickInfo } from "@/shared/components/quick-info";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { ArrowLeft } from "lucide-react";
import Link from "next/link";
import type { Play } from "../../types";

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
    <Card className="p-6">
      <div className="flex flex-col gap-4 lg:flex-row lg:items-center lg:justify-between">
        <div className="flex items-start gap-4">
          <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
            <Icon type="pokemon" size={36} />
          </div>

          <div className="flex min-w-0 flex-col gap-2">
            <div>
              <h1 className="text-xl font-bold md:text-3xl">Pokemon team</h1>
              <p className="text-muted-foreground mt-1 text-sm md:text-base">
                {play.name}
              </p>
            </div>

            <div className="flex flex-wrap items-center gap-2 text-sm">
              <QuickInfo
                icon={<Icon type="user" />}
                value={`${teamCount}/6 in team`}
                title="Pokemon in current team"
                variant="primary"
              />
              <span>|</span>
              <QuickInfo
                icon={<Icon type="box" />}
                value={`${boxCount} in box`}
                title="Pokemon in box storage"
              />
              {shinyCount > 0 ? (
                <>
                  <span>|</span>
                  <QuickInfo
                    icon={<Icon type="shiny" />}
                    value={`${shinyCount} shiny`}
                    title="Shiny Pokemon caught"
                  />
                </>
              ) : null}
            </div>
          </div>
        </div>

        <div className="flex justify-end">
          <Button variant="outline" asChild>
            <Link href={backUrl}>
              <ArrowLeft className="h-5 w-5" />
              Back
            </Link>
          </Button>
        </div>
      </div>
    </Card>
  );
};
