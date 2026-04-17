"use client";

import { cn } from "@/lib/utils/cn";
import { Icon, type IconType } from "@/shared/components/icon";
import { Checkbox } from "@/shared/components/ui/checkbox";
import { ScrollArea } from "@/shared/components/ui/scroll-area";
import { getPokemonSpriteUrl } from "@/shared/utils";
import Image from "next/image";
import { useMemo, useState } from "react";
import {
  useCheckPlayTrackingItemBulk,
  useUncheckPlayTrackingItemBulk,
} from "../../hooks/usePlayTrackingBulkMutations";
import {
  useCheckPlayTrackingItem,
  useUncheckPlayTrackingItem,
} from "../../hooks/usePlayTrackingMutations";
import type { PlayTrackingItem } from "../../types";
import { PLAY_POKEMON_SPRITE_SIZE } from "../../utils/pokemon-sprites";
import { PlayActionsMenu } from "../shared/play-actions-menu";
import { PlayDrawerToolbar } from "../shared/play-drawer-toolbar";
import { PlayFilterMenu } from "../shared/play-filter-menu";
import { PlayInteractiveCard } from "../shared/play-interactive-card";
import { StoryDecisionModal } from "./story-decision-modal";

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
    label: "Pokemon",
    color: "text-orange-500",
  },
  decision: { icon: "decision", label: "Decision", color: "text-purple-500" },
};

const FILTER_OPTIONS = [
  { value: "battle", label: "Battle" },
  { value: "checkpoint", label: "Checkpoint" },
  { value: "pokemon-milestone", label: "Pokemon" },
  { value: "decision", label: "Decision" },
];

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

  const [selectedTypes, setSelectedTypes] = useState<string[]>([]);
  const [decisionModal, setDecisionModal] = useState<{
    open: boolean;
    itemId: number;
    itemName: string;
  }>({ open: false, itemId: 0, itemName: "" });

  const availableTypes = useMemo(() => {
    const itemTypes = new Set(
      items.map((item) => item.itemTypeSlug).filter(Boolean),
    );

    return FILTER_OPTIONS.filter((option) => itemTypes.has(option.value));
  }, [items]);

  const filteredItems = useMemo(() => {
    if (selectedTypes.length === 0) return items;

    return items.filter(
      (item) => item.itemTypeSlug && selectedTypes.includes(item.itemTypeSlug),
    );
  }, [items, selectedTypes]);

  const actionableItems = filteredItems.filter(
    (item) => item.itemTypeSlug !== "decision",
  );
  const incompleteVisibleCount = actionableItems.filter(
    (item) => !item.isCompleted,
  ).length;
  const completeVisibleCount = actionableItems.filter(
    (item) => item.isCompleted,
  ).length;

  const openDecisionModal = (item: PlayTrackingItem) => {
    setDecisionModal({
      open: true,
      itemId: item.id,
      itemName: item.name,
    });
  };

  const handleToggle = (item: PlayTrackingItem, checked: boolean) => {
    if (item.itemTypeSlug === "decision") {
      openDecisionModal(item);
      return;
    }

    if (checked) {
      checkComplete.mutate({ playId, trackingItemId: item.id, categoryId });
      return;
    }

    checkIncomplete.mutate({ playId, trackingItemId: item.id, categoryId });
  };

  const handleBulkCheck = () => {
    const uncheckedIds = actionableItems
      .filter((item) => !item.isCompleted)
      .map((item) => item.id);

    if (uncheckedIds.length > 0) {
      checkBulk.mutate({
        playId,
        trackingItemIds: uncheckedIds,
        categoryId,
      });
    }
  };

  const handleBulkUncheck = () => {
    const checkedIds = actionableItems
      .filter((item) => item.isCompleted)
      .map((item) => item.id);

    if (checkedIds.length > 0) {
      uncheckBulk.mutate({
        playId,
        trackingItemIds: checkedIds,
        categoryId,
      });
    }
  };

  return (
    <>
      <PlayDrawerToolbar
        summary={`Showing ${filteredItems.length} of ${items.length} story items`}
        controls={
          availableTypes.length > 1 ? (
            <PlayFilterMenu
              label="Types"
              options={availableTypes}
              selectedValues={selectedTypes}
              onSelectedValuesChange={setSelectedTypes}
            />
          ) : null
        }
        actions={
          <PlayActionsMenu
            items={[
              {
                label: "Mark visible",
                onSelect: handleBulkCheck,
                disabled: incompleteVisibleCount === 0,
              },
              {
                label: "Unmark visible",
                onSelect: handleBulkUncheck,
                disabled: completeVisibleCount === 0,
              },
            ]}
          />
        }
      />

      <ScrollArea className="min-h-0 flex-1">
        {filteredItems.length > 0 ? (
          <div className="space-y-2 px-6 py-4">
            {filteredItems.map((item) => {
              const isDecision = item.itemTypeSlug === "decision";
              const typeConfig = item.itemTypeSlug
                ? ITEM_TYPE_CONFIG[item.itemTypeSlug]
                : null;
              const selectedDecision = item.decisionOptions?.find(
                (option) => option.id === item.selectedDecisionId,
              );

              return (
                <PlayInteractiveCard
                  key={item.id}
                  isActive={item.isCompleted}
                  onClick={() =>
                    isDecision
                      ? openDecisionModal(item)
                      : handleToggle(item, !item.isCompleted)
                  }
                >
                  <div className="flex items-start gap-3">
                    {typeConfig ? (
                      <div className="bg-muted flex size-9 shrink-0 items-center justify-center rounded-full">
                        <Icon
                          type={typeConfig.icon}
                          size={16}
                          className={typeConfig.color}
                        />
                      </div>
                    ) : null}

                    <div className="min-w-0 flex-1">
                      <div className="flex items-start justify-between gap-3">
                        <div className="min-w-0">
                          <p className="text-sm font-medium">{item.name}</p>
                          {typeConfig ? (
                            <p className="text-muted-foreground mt-1 text-xs">
                              {typeConfig.label}
                            </p>
                          ) : null}
                        </div>

                        {isDecision ? null : (
                          <Checkbox
                            id={`tracking-item-${item.id}`}
                            checked={item.isCompleted}
                            className="pointer-events-none mt-0.5"
                          />
                        )}
                      </div>

                      {item.description ? (
                        <p className="text-muted-foreground mt-2 text-xs">
                          {item.description}
                        </p>
                      ) : null}

                      {isDecision ? (
                        <div className="bg-background/50 mt-3 flex items-center justify-between gap-3 rounded-lg border px-3 py-2">
                          <div className="flex min-w-0 items-center gap-3">
                            {selectedDecision?.pokemonDbSpriteSlug ? (
                              <Image
                                src={getPokemonSpriteUrl(
                                  false,
                                  selectedDecision.pokemonDbSpriteSlug,
                                )}
                                alt={selectedDecision.name}
                                width={PLAY_POKEMON_SPRITE_SIZE}
                                height={PLAY_POKEMON_SPRITE_SIZE}
                                className="h-14 w-14 shrink-0 object-contain"
                              />
                            ) : null}

                            <div className="min-w-0">
                              <p
                                className={cn(
                                  "truncate text-xs font-medium",
                                  item.isCompleted
                                    ? "text-primary"
                                    : "text-muted-foreground",
                                )}
                              >
                                {selectedDecision
                                  ? selectedDecision.name
                                  : "Choose an option"}
                              </p>
                              <p className="text-muted-foreground mt-1 text-[11px]">
                                {selectedDecision
                                  ? "Selected option"
                                  : "Tap to choose"}
                              </p>
                            </div>
                          </div>

                          <Icon
                            type="rightArrow"
                            className="text-muted-foreground size-4 shrink-0"
                          />
                        </div>
                      ) : null}

                      {item.isCompleted && item.completedAt ? (
                        <p className="text-muted-foreground mt-2 text-xs">
                          Updated{" "}
                          {new Date(item.completedAt).toLocaleDateString()}
                        </p>
                      ) : null}
                    </div>
                  </div>
                </PlayInteractiveCard>
              );
            })}
          </div>
        ) : (
          <div className="flex h-full items-center justify-center px-6 py-12">
            <p className="text-muted-foreground text-sm">
              No items match the current filters.
            </p>
          </div>
        )}
      </ScrollArea>

      <StoryDecisionModal
        open={decisionModal.open}
        onOpenChange={(open) =>
          setDecisionModal((previous) => ({ ...previous, open }))
        }
        playId={playId}
        trackingItemId={decisionModal.itemId}
        itemName={decisionModal.itemName}
      />
    </>
  );
};
