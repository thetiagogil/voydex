"use client";

import { Header } from "@/components/shared/header";
import { Icon } from "@/components/shared/icon";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatusInfo } from "@/components/shared/status-info";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import type { Play } from "@/types/play";
import { useState } from "react";
import { PlayEditModal } from "./play-edit-modal";

interface PlayHeaderProps {
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
            status={play.status.slug}
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
