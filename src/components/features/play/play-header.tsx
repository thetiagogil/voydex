"use client";

import { Header } from "@/components/shared/header";
import { Icon } from "@/components/shared/icon";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatusInfo } from "@/components/shared/status-info";
import { Button } from "@/components/ui/button";
import { Pencil } from "lucide-react";
import { useState } from "react";
import { PlayEditModal } from "./play-edit-modal";

export const PlayHeader = ({ play }: { play: Play }) => {
  const [editOpen, setEditOpen] = useState(false);

  return (
    <>
      <Header
        icon={
          <div className="bg-primary/10 border-primary/30 text-primary flex h-20 w-20 shrink-0 items-center justify-center rounded-xl border text-2xl font-bold">
            <Icon name="play" size={40} />
          </div>
        }
        title={play.name}
        badge={<StatusInfo status={play.status} value={play.status} isBadge />}
        actions={
          <Button
            variant="outline-secondary"
            size="sm"
            onClick={() => setEditOpen(true)}
          >
            <Pencil className="mr-2 h-4 w-4" />
            Edit
          </Button>
        }
        metadata={
          <div className="flex flex-wrap items-center gap-2 text-sm">
            <QuickInfo
              icon={<Icon name="game" />}
              value={play.game.name}
              title="Current play game"
              variant="primary"
            />
            {"•"}
            <QuickInfo
              icon={<Icon name="calendar" />}
              value={`Started on ${new Date(play.created_at).toLocaleDateString()}`}
              title="Start date of the play"
            />
          </div>
        }
      />

      <PlayEditModal play={play} open={editOpen} setOpen={setEditOpen} />
    </>
  );
};
