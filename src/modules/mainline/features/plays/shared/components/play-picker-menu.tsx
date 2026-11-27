"use client";

import { useState } from "react";

import { Link } from "@/shared/components/link";

import { appRoutes } from "@/config/routes";
import { useNewPlayDialog } from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { GameOptionCover } from "@/modules/reference/features/games/components/game-option-cover";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { MenuOptionContent } from "@/shared/components/menu-option-content";
import { Button, buttonVariants } from "@/shared/components/ui/button";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
} from "@/shared/components/ui/combobox";
import { Spinner } from "@/shared/components/ui/spinner";

export type PlayPickerMenuItem = {
  id: string;
  /* "Sword · Late Journey": what the search reads. */
  label: string;
  /* A quiet second line, such as the Play's status. */
  detail?: string | null;
  /* The Play's game, for its cover and the second line. */
  gameName?: string;
  gameSlug?: string | null;
  /* "Late Journey": the row's title where the cover says the game. */
  name?: string;
};

type PlayPickerMenuProps = {
  /* What the picker is for, as its search reads ("Add to which Play?"). */
  heading: string;
  items: PlayPickerMenuItem[];
  /* Under the list: start a new Play instead. */
  newPlay?: { label: string };
  /* The picked Play: the picker acts in place, it never navigates. */
  onPick: (item: PlayPickerMenuItem) => void;
  /* A pick is being opened: the trigger spins but keeps focus. */
  pending?: boolean;
  triggerLabel: string;
  triggerVariant?: "default" | "secondary";
};

/*
 * Start a new Play from the picker: New Play opens over the page where a
 * page hosts it (Mainline, the Codex entry), otherwise a link to Mainline's.
 */
const NewPlayRow = ({
  label,
  onDone,
}: {
  label: string;
  onDone: () => void;
}) => {
  const opener = useNewPlayDialog();
  const className = buttonVariants({
    className: "mt-1.5 w-full",
    variant: "secondary",
  });
  const content = (
    <>
      <AppIcon icon={appIcons.actions.create} inline="start" />
      {label}
    </>
  );

  return opener ? (
    <button
      type="button"
      className={className}
      onClick={() => {
        onDone();
        opener.open();
      }}
    >
      {content}
    </button>
  ) : (
    <Link href={appRoutes.mainlineNewPlay()} className={className}>
      {content}
    </Link>
  );
};

const matchesPlay = (item: PlayPickerMenuItem, query: string) => {
  const needle = query.trim().toLowerCase();

  return (
    !needle ||
    `${item.label} ${item.gameName ?? ""} ${item.detail ?? ""}`
      .toLowerCase()
      .includes(needle)
  );
};

/*
 * A picker of your Plays, the same searchable picker a Pokémon or a game
 * takes: a search, then each Play with its game's cover, name and status.
 * The pick is handed to `onPick` to act in place (the Codex's "Add to a
 * Play" opens Add Pokémon over the page); under the list, a way to start a
 * new one.
 */
export const PlayPickerMenu = ({
  heading,
  items,
  newPlay,
  onPick,
  pending = false,
  triggerLabel,
  triggerVariant = "secondary",
}: PlayPickerMenuProps) => {
  const [open, setOpen] = useState(false);

  return (
    <Combobox
      items={items}
      open={open}
      onOpenChange={setOpen}
      /* An action, not a value: nothing stays picked. */
      value={null}
      onValueChange={(item: PlayPickerMenuItem | null) => {
        if (!item) return;

        setOpen(false);
        onPick(item);
      }}
      itemToStringLabel={(item: PlayPickerMenuItem) => item.label}
      itemToStringValue={(item: PlayPickerMenuItem) => item.id}
      isItemEqualToValue={(
        left: PlayPickerMenuItem,
        right: PlayPickerMenuItem,
      ) => left.id === right.id}
      filter={matchesPlay}
      autoHighlight
    >
      <ComboboxTrigger
        aria-label={triggerLabel}
        showChevron={false}
        render={
          <Button type="button" variant={triggerVariant} aria-busy={pending} />
        }
      >
        {triggerLabel}
        {pending ? (
          <Spinner data-icon="inline-end" />
        ) : (
          <AppIcon icon={appIcons.actions.expand} inline="end" />
        )}
      </ComboboxTrigger>
      <ComboboxContent
        align="end"
        aria-label={heading}
        className="w-88 max-w-[calc(100vw-2rem)]"
      >
        <ComboboxInput
          aria-label={heading}
          placeholder="Search your Plays"
          showTrigger={false}
        />
        <ComboboxEmpty>No Play matches.</ComboboxEmpty>
        <ComboboxList className="max-h-80 pt-0">
          {(item: PlayPickerMenuItem) => (
            <ComboboxItem key={item.id} value={item}>
              <MenuOptionContent
                leading={
                  item.gameSlug ? (
                    <GameOptionCover
                      gameName={item.gameName ?? item.label}
                      gameSlug={item.gameSlug}
                    />
                  ) : undefined
                }
                title={item.name ?? item.label}
                description={
                  [item.name ? item.gameName : null, item.detail]
                    .filter(Boolean)
                    .join(" · ") || undefined
                }
              />
            </ComboboxItem>
          )}
        </ComboboxList>
        {newPlay ? (
          <NewPlayRow label={newPlay.label} onDone={() => setOpen(false)} />
        ) : null}
      </ComboboxContent>
    </Combobox>
  );
};
