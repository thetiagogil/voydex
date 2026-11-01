"use client";

import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { useNewPlayDialog } from "@/modules/mainline/features/plays/shared/client/new-play-dialog-context";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/shared/components/ui/dropdown-menu";
import { Spinner } from "@/shared/components/ui/spinner";

export type PlayPickerMenuItem = {
  id: string;
  /* "Sword · Late Journey". */
  label: string;
  /* A quiet second line, such as the Play's status. */
  detail?: string | null;
};

type PlayPickerMenuProps = {
  /* What the menu is for, read before its items ("Add Arcanine to"). */
  heading: string;
  items: PlayPickerMenuItem[];
  /* The last item: start a new Play instead. */
  newPlay?: { label: string };
  /* The picked Play: the menu acts in place, it never navigates. */
  onPick: (item: PlayPickerMenuItem) => void;
  /* A pick is being opened: the trigger spins but keeps focus. */
  pending?: boolean;
  triggerLabel: string;
  triggerVariant?: "default" | "secondary";
};

/*
 * Start a new Play from the menu: New Play opens over the page where a page
 * hosts it (Mainline, the Codex entry), otherwise a link to Mainline's.
 */
const NewPlayMenuItem = ({ label }: { label: string }) => {
  const opener = useNewPlayDialog();
  const content = (
    <>
      <AppIcon icon={appIcons.actions.create} />
      {label}
    </>
  );

  return opener ? (
    <DropdownMenuItem onClick={() => opener.open()}>{content}</DropdownMenuItem>
  ) : (
    <DropdownMenuItem render={<Link href={appRoutes.mainlineNewPlay()} />}>
      {content}
    </DropdownMenuItem>
  );
};

/*
 * A menu of your Plays, each handed to `onPick` to act in place (the Codex's
 * "Add to a Play" opens Add Pokémon over the page), ending on a way to start a
 * new one. It is quiet chrome: a flat trigger and the float shadow.
 */
export const PlayPickerMenu = ({
  heading,
  items,
  newPlay,
  onPick,
  pending = false,
  triggerLabel,
  triggerVariant = "secondary",
}: PlayPickerMenuProps) => (
  <DropdownMenu>
    <DropdownMenuTrigger
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
    </DropdownMenuTrigger>
    <DropdownMenuContent align="end" className="w-72 max-w-[calc(100vw-2rem)]">
      <DropdownMenuGroup>
        <DropdownMenuLabel>{heading}</DropdownMenuLabel>
        {items.map((item) => (
          <DropdownMenuItem key={item.id} onClick={() => onPick(item)}>
            <span className="min-w-0">
              <span className="block truncate">{item.label}</span>
              {item.detail ? (
                <span className="text-ink-3 text-12 block truncate font-semibold">
                  {item.detail}
                </span>
              ) : null}
            </span>
          </DropdownMenuItem>
        ))}
      </DropdownMenuGroup>
      {newPlay ? (
        <>
          <DropdownMenuSeparator />
          <NewPlayMenuItem label={newPlay.label} />
        </>
      ) : null}
    </DropdownMenuContent>
  </DropdownMenu>
);
