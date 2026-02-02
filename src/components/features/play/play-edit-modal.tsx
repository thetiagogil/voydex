"use client";

import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Spinner } from "@/components/ui/spinner";
import { usePlayStatuses, useUpdatePlay } from "@/hooks/gameplay/usePlays";
import { toastPromise } from "@/lib/utils/toast-promise";
import { useEffect, useState } from "react";

interface PlayEditModalProps {
  play: Play;
  open: boolean;
  setOpen: (open: boolean) => void;
}

export const PlayEditModal = ({ play, open, setOpen }: PlayEditModalProps) => {
  const updatePlay = useUpdatePlay();
  const { data: statuses = [] } = usePlayStatuses();

  const [name, setName] = useState(play.name || "");
  const [notes, setNotes] = useState(play.notes || "");
  const [statusSlug, setStatusSlug] = useState<string>(play.status);

  // Reset form when play changes
  useEffect(() => {
    setName(play.name || "");
    setNotes(play.notes || "");
    setStatusSlug(play.status);
  }, [play]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    const selectedStatus = statuses.find((s) => s.slug === statusSlug);

    try {
      await toastPromise(
        updatePlay.mutateAsync({
          playId: play.id,
          updates: {
            name: name.trim() || undefined,
            notes: notes.trim() || undefined,
            status_id: selectedStatus?.id,
          },
        }),
        {
          loading: "Updating playthrough...",
          success: "Playthrough updated!",
          error: (err) => err?.message || "Failed to update playthrough",
        },
      );

      setOpen(false);
    } catch (error) {
      // Error is handled by toastPromise
    }
  };

  const handleClose = () => {
    setOpen(false);
    // Reset form
    setName(play.name || "");
    setNotes(play.notes || "");
    setStatusSlug(play.status);
  };

  return (
    <Dialog open={open} onOpenChange={handleClose}>
      <DialogContent>
        <form onSubmit={handleSubmit}>
          <DialogHeader>
            <DialogTitle>Edit Playthrough</DialogTitle>
            <DialogDescription>
              Update your playthrough details
            </DialogDescription>
          </DialogHeader>

          <div className="space-y-4 py-4">
            {/* Playthrough Name */}
            <div className="space-y-2">
              <Label htmlFor="playName">Name</Label>
              <Input
                id="playName"
                placeholder="My Adventure"
                value={name}
                onChange={(e) => setName(e.target.value)}
                disabled={updatePlay.isPending}
              />
            </div>

            {/* Status */}
            <div className="space-y-2">
              <Label htmlFor="status">Status</Label>
              <Select
                value={statusSlug}
                onValueChange={setStatusSlug}
                disabled={updatePlay.isPending}
              >
                <SelectTrigger>
                  <SelectValue placeholder="Select status" />
                </SelectTrigger>
                <SelectContent>
                  {statuses.map((status) => (
                    <SelectItem key={status.id} value={status.slug}>
                      {status.name}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>

            {/* Notes */}
            <div className="space-y-2">
              <Label htmlFor="notes">Notes</Label>
              <Input
                id="notes"
                placeholder="Add any notes about your playthrough..."
                value={notes}
                onChange={(e) => setNotes(e.target.value)}
                disabled={updatePlay.isPending}
              />
            </div>

            {/* Game info */}
            <div className="bg-muted/50 rounded-lg p-3">
              <p className="text-sm font-medium">{play.game?.name}</p>
              <p className="text-muted-foreground text-xs">
                {play.game?.generation?.name} • {play.game?.region?.name}
              </p>
            </div>
          </div>

          <DialogFooter>
            <Button
              type="button"
              variant="outline-secondary"
              onClick={handleClose}
              disabled={updatePlay.isPending}
            >
              Cancel
            </Button>
            <Button type="submit" disabled={updatePlay.isPending}>
              {updatePlay.isPending ? (
                <>
                  <Spinner className="mr-2" />
                  Saving...
                </>
              ) : (
                "Save Changes"
              )}
            </Button>
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  );
};
