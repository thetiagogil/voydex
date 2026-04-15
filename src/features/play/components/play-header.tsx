"use client";

import { Header } from "@/shared/components/header";
import { Icon } from "@/shared/components/icon";
import { QuickInfo } from "@/shared/components/quick-info";
import { StatusInfo } from "@/shared/components/status-info";
import { Button } from "@/shared/components/ui/button";
import { Progress } from "@/shared/components/ui/progress";
import { toStatusVariant } from "@/shared/constants/play-statuses";
import { useState } from "react";
import type { Play } from "../types";
import { PlayEditModal } from "./play-edit-modal";

type PlayHeaderProps = {
  play: Play;
  completion?: number;
}

export const PlayHeader = ({ play, completion = 0 }: PlayHeaderProps) => {
  const [editOpen, setEditOpen] = useState(false);

  return (
    <>
      <Header
        icon={
          <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
            <Icon type="play" size={40} />
          </div>
        }
        title={play.name}
        badge={
          <StatusInfo
            status={toStatusVariant(play.status.slug)}
            value={play.status.name}
            isBadge
          />
        }
        actions={
          <Button variant="outline" onClick={() => setEditOpen(true)}>
            <Icon type="edit" />
            Edit
          </Button>
        }
        metadata={
          <div className="flex flex-col gap-2">
            <div className="flex flex-wrap items-center gap-2 text-sm">
              <QuickInfo
                icon={<Icon type="game" />}
                value={play.game.name}
                title="Current play game"
                variant="primary"
              />
              <span>•</span>
              <QuickInfo
                icon={<Icon type="calendar" />}
                value={`Started on ${new Date(play.createdAt).toLocaleDateString()}`}
                title="Start date of the play"
              />
            </div>
            <div className="flex items-center gap-3">
              <Progress value={completion} className="h-2 flex-1" />
              <span className="text-muted-foreground text-xs font-medium">
                {completion}%
              </span>
            </div>
          </div>
        }
      />

      <PlayEditModal
        play={play}
        completion={completion}
        open={editOpen}
        setOpen={setEditOpen}
      />
    </>
  );
};
