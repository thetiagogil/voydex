"use client";

import { cn } from "@/lib/utils/cn";
import { Icon, type IconType } from "@/shared/components/icon";
import { SquareCheckbox } from "@/shared/components/square-checkbox";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import { useMemo, useState } from "react";
import {
  useCheckPlayTrackingItemBulk,
  useUncheckPlayTrackingItemBulk,
} from "../hooks/usePlayTrackingBulkMutations";
import {
  useCheckPlayTrackingItem,
  useUncheckPlayTrackingItem,
} from "../hooks/usePlayTrackingMutations";
import type { PlayTrackingItem } from "../types";
import { DecisionModal } from "./decision-modal";

// =============================================================================
// TYPE CUE CONFIG
// =============================================================================

const ITEM_TYPE_CONFIG: Record<
  string,
  { icon: IconType; label: string; color: string }
> = {
  battle: { icon: "battle", label: "Battle", color: "text-red-500" },
  checkpoint: {
    icon: "checkpoint",
    label: "Checkpoint",
    color: "text-blue-500",
  },
  "pokemon-milestone": {
    icon: "pokemon",
    label: "Pokémon",
    color: "text-orange-500",
  },
  decision: { icon: "decision", label: "Decision", color: "text-purple-500" },
};

const FILTER_OPTIONS = [
  { slug: "battle", label: "Battle" },
  { slug: "checkpoint", label: "Checkpoint" },
  { slug: "pokemon-milestone", label: "Pokémon" },
  { slug: "decision", label: "Decision" },
];

// =============================================================================
// COMPONENT
// =============================================================================

type StoryItemsListProps = {
  items: PlayTrackingItem[];
  playId: string;
  categoryId: number;
};

export const StoryItemsList = ({
  items,
  playId,
  categoryId,
}: StoryItemsListProps) => {
  const checkComplete = useCheckPlayTrackingItem();
  const checkIncomplete = useUncheckPlayTrackingItem();
  const checkBulk = useCheckPlayTrackingItemBulk();
  const uncheckBulk = useUncheckPlayTrackingItemBulk();

  const [typeFilter, setTypeFilter] = useState<string | null>(null);
  const [decisionModal, setDecisionModal] = useState<{
    open: boolean;
    itemId: number;
    itemName: string;
  }>({ open: false, itemId: 0, itemName: "" });

  // Get available types in this category
  const availableTypes = useMemo(() => {
    const types = new Set(
      items.map((item) => item.itemTypeSlug).filter(Boolean),
    );
    return FILTER_OPTIONS.filter((f) => types.has(f.slug));
  }, [items]);

  const filteredItems = useMemo(() => {
    if (!typeFilter) return items;
    return items.filter((item) => item.itemTypeSlug === typeFilter);
  }, [items, typeFilter]);

  const handleToggle = (item: PlayTrackingItem, checked: boolean) => {
    // Decision items open modal instead
    if (item.itemTypeSlug === "decision") {
      setDecisionModal({ open: true, itemId: item.id, itemName: item.name });
      return;
    }

    if (checked) {
      checkComplete.mutate({ playId, trackingItemId: item.id, categoryId });
    } else {
      checkIncomplete.mutate({ playId, trackingItemId: item.id, categoryId });
    }
  };

  return (
    <>
      {/* Type filter */}
      {availableTypes.length > 1 && (
        <div className="flex flex-wrap gap-1.5 px-4">
          <Badge
            variant={typeFilter === null ? "default" : "outline"}
            className="cursor-pointer"
            onClick={() => setTypeFilter(null)}
          >
            All
          </Badge>
          {availableTypes.map((ft) => (
            <Badge
              key={ft.slug}
              variant={typeFilter === ft.slug ? "default" : "outline"}
              className="cursor-pointer"
              onClick={() =>
                setTypeFilter(typeFilter === ft.slug ? null : ft.slug)
              }
            >
              {ft.label}
            </Badge>
          ))}
        </div>
      )}

      {/* Bulk actions */}
      <div className="flex gap-2 px-4">
        <Button
          variant="secondary"
          size="sm"
          onClick={() => {
            const uncheckedIds = filteredItems
              .filter(
                (item) => item.itemTypeSlug !== "decision" && !item.isCompleted,
              )
              .map((item) => item.id);
            if (uncheckedIds.length > 0)
              checkBulk.mutate({
                playId,
                trackingItemIds: uncheckedIds,
                categoryId,
              });
          }}
        >
          Mark all
        </Button>
        <Button
          variant="secondary"
          size="sm"
          onClick={() => {
            const checkedIds = filteredItems
              .filter(
                (item) => item.itemTypeSlug !== "decision" && item.isCompleted,
              )
              .map((item) => item.id);
            if (checkedIds.length > 0)
              uncheckBulk.mutate({
                playId,
                trackingItemIds: checkedIds,
                categoryId,
              });
          }}
        >
          Unmark all
        </Button>
      </div>

      {/* Items list */}
      <ScrollArea>
        <div className="flex flex-col gap-2 px-4">
          {filteredItems.map((item: PlayTrackingItem) => {
            const isDecision = item.itemTypeSlug === "decision";
            const typeConfig = item.itemTypeSlug
              ? ITEM_TYPE_CONFIG[item.itemTypeSlug]
              : null;

            if (isDecision) {
              return (
                <button
                  key={`item-${item.id}`}
                  type="button"
                  onClick={() =>
                    setDecisionModal({
                      open: true,
                      itemId: item.id,
                      itemName: item.name,
                    })
                  }
                  className={cn(
                    "flex items-center gap-3 rounded-lg border p-3 text-left transition-colors",
                    item.isCompleted
                      ? "border-primary bg-primary/10"
                      : "border-border hover:bg-foreground/5",
                  )}
                >
                  {typeConfig && (
                    <Icon
                      type={typeConfig.icon}
                      size={16}
                      className={typeConfig.color}
                    />
                  )}
                  <div className="min-w-0 flex-1">
                    <h4 className="text-sm font-medium">{item.name}</h4>
                    {item.description && (
                      <p className="text-muted-foreground mt-0.5 text-xs">
                        {item.description}
                      </p>
                    )}
                    <p
                      className={cn(
                        "mt-1 text-xs",
                        item.isCompleted
                          ? "text-primary"
                          : "text-muted-foreground",
                      )}
                    >
                      {item.isCompleted
                        ? "Decision made"
                        : "No decision selected"}
                    </p>
                  </div>
                  <Icon
                    type="rightArrow"
                    className="text-muted-foreground h-4 w-4"
                  />
                </button>
              );
            }

            return (
              <SquareCheckbox
                key={`item-${item.id}`}
                title={
                  <div className="flex items-center gap-2">
                    {typeConfig && (
                      <Icon
                        type={typeConfig.icon}
                        size={14}
                        className={typeConfig.color}
                      />
                    )}
                    <span className="text-sm font-medium">{item.name}</span>
                  </div>
                }
                id={`item-${item.id}`}
                checked={item.isCompleted || false}
                onCheckedChange={(checked) => {
                  handleToggle(item, checked);
                }}
                className="min-h-0"
              >
                {item.description && (
                  <p className="text-muted-foreground mt-1 text-xs">
                    {item.description}
                  </p>
                )}
                {item.isCompleted && item.completedAt && (
                  <span className="text-muted-foreground text-xs">
                    {new Date(item.completedAt).toLocaleDateString()}
                  </span>
                )}
              </SquareCheckbox>
            );
          })}
        </div>
      </ScrollArea>

      {/* Decision modal */}
      <DecisionModal
        open={decisionModal.open}
        onOpenChange={(open) => setDecisionModal((prev) => ({ ...prev, open }))}
        playId={playId}
        trackingItemId={decisionModal.itemId}
        itemName={decisionModal.itemName}
      />
    </>
  );
};
