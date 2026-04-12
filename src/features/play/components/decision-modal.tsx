"use client";

import {
  useDecisionOptions,
  usePlayDecision,
  useSaveDecision,
} from "@/features/play/hooks/usePlayDecisions";
import { cn } from "@/lib/utils/cn";
import { Loading } from "@/shared/components/loading";
import { Button } from "@/shared/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { getPokemonSpriteUrl } from "@/shared/utils";
import Image from "next/image";
import { useEffect, useState } from "react";

interface DecisionModalProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  playId: string;
  trackingItemId: number;
  itemName: string;
}

export const DecisionModal = ({
  open,
  onOpenChange,
  playId,
  trackingItemId,
  itemName,
}: DecisionModalProps) => {
  const { data: options, isLoading: optionsLoading } =
    useDecisionOptions(trackingItemId);
  const { data: currentDecision, isLoading: decisionLoading } = usePlayDecision(
    playId,
    trackingItemId,
  );
  const saveDecision = useSaveDecision();

  const [selectedOptionId, setSelectedOptionId] = useState<number | null>(null);

  useEffect(() => {
    if (currentDecision) {
      setSelectedOptionId(currentDecision.selectedOptionId);
    }
  }, [currentDecision]);

  const handleSave = () => {
    saveDecision.mutate(
      {
        playId,
        trackingItemId,
        decisionOptionId: selectedOptionId,
      },
      {
        onSuccess: () => onOpenChange(false),
      },
    );
  };

  const isLoading = optionsLoading || decisionLoading;

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent>
        <DialogHeader>
          <DialogTitle>{itemName}</DialogTitle>
        </DialogHeader>

        {isLoading ? (
          <Loading />
        ) : (
          <div className="flex flex-col gap-2 py-2">
            {options?.map((option) => (
              <button
                key={option.id}
                type="button"
                onClick={() =>
                  setSelectedOptionId(
                    selectedOptionId === option.id ? null : option.id,
                  )
                }
                className={cn(
                  "flex items-center gap-3 rounded-lg border p-3 text-left transition-colors",
                  selectedOptionId === option.id
                    ? "border-primary bg-primary/10"
                    : "border-border hover:bg-foreground/5",
                )}
              >
                <div
                  className={cn(
                    "flex h-5 w-5 shrink-0 items-center justify-center rounded-full border-2 transition-colors",
                    selectedOptionId === option.id
                      ? "border-primary bg-primary"
                      : "border-muted-foreground",
                  )}
                >
                  {selectedOptionId === option.id && (
                    <div className="h-2 w-2 rounded-full bg-white" />
                  )}
                </div>
                {option.pokemondb_sprite_slug && (
                  <Image
                    src={getPokemonSpriteUrl(
                      false,
                      option.pokemondb_sprite_slug,
                    )}
                    alt={option.name}
                    width={48}
                    height={48}
                    className="h-12 w-12 object-contain"
                  />
                )}
                <span className="text-sm font-medium">{option.name}</span>
              </button>
            ))}

            {(!options || options.length === 0) && (
              <p className="text-muted-foreground text-sm">
                No options available for this decision.
              </p>
            )}
          </div>
        )}

        <DialogFooter>
          <Button variant="secondary" onClick={() => onOpenChange(false)}>
            Cancel
          </Button>
          <Button onClick={handleSave} disabled={saveDecision.isPending}>
            {saveDecision.isPending ? "Saving..." : "Save"}
          </Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
};
