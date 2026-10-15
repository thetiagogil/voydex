"use client";

import { useId, useState, useTransition, type FormEvent } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import { FieldError } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { cn } from "@/shared/utils/cn";

import type { PlaySettingsCreateResult } from "../server/play-settings-actions";
import type { PlaySettingsChoice } from "../types";

/*
 * The last chip of a set you can add to (challenge rules, tags): dashed, as
 * every not-yet-added thing is. It opens a name field in its place; Enter
 * adds, Escape or Cancel closes it.
 */
export const SettingsAddChip = ({
  disabled = false,
  label,
  maxLength,
  onAdded,
  onCreate,
  placeholder,
}: {
  disabled?: boolean;
  label: string;
  maxLength: number;
  onAdded: (choice: PlaySettingsChoice) => void;
  onCreate: (name: string) => Promise<PlaySettingsCreateResult>;
  placeholder: string;
}) => {
  const errorId = useId();
  const [isOpen, setIsOpen] = useState(false);
  const [name, setName] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [isAdding, startTransition] = useTransition();

  const close = () => {
    setIsOpen(false);
    setName("");
    setError(null);
  };

  const submit = (event: FormEvent) => {
    event.preventDefault();

    if (!name.trim()) {
      close();
      return;
    }

    startTransition(async () => {
      const result = await onCreate(name);

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      onAdded(result.choice);
      close();
    });
  };

  if (!isOpen) {
    return (
      <button
        type="button"
        disabled={disabled}
        onClick={() => setIsOpen(true)}
        className={cn(
          "text-14 border-dash text-ink-2 inline-flex min-h-10 items-center gap-1.5 rounded-full border-[1.5px] border-dashed px-4 font-bold transition-colors",
          "hover:bg-hover hover:text-ink",
          "focus-visible:outline-focus outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
          "disabled:cursor-not-allowed disabled:opacity-50",
        )}
      >
        <AppIcon icon={appIcons.actions.create} />
        {label}
      </button>
    );
  }

  return (
    <form
      onSubmit={submit}
      className="flex w-full flex-wrap items-center gap-2 sm:w-auto"
    >
      <Input
        autoFocus
        aria-label={placeholder}
        aria-invalid={error ? true : undefined}
        aria-describedby={error ? errorId : undefined}
        value={name}
        maxLength={maxLength}
        placeholder={placeholder}
        disabled={isAdding}
        onChange={(event) => {
          setName(event.target.value);
          setError(null);
        }}
        onKeyDown={(event) => {
          if (event.key === "Escape") {
            event.preventDefault();
            close();
          }
        }}
        className="h-10 min-w-0 flex-1 rounded-full sm:w-64 sm:flex-none"
      />
      <Button type="submit" size="sm" disabled={isAdding}>
        Add
      </Button>
      <Button
        type="button"
        size="sm"
        variant="ghost"
        disabled={isAdding}
        onClick={close}
      >
        Cancel
      </Button>
      {error ? (
        <FieldError id={errorId} className="basis-full">
          {error}
        </FieldError>
      ) : null}
    </form>
  );
};
