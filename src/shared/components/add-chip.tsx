"use client";

import { useId, useRef, useState, useTransition, type FormEvent } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ChoiceChip } from "@/shared/components/choice-chip";
import { FieldError } from "@/shared/components/ui/field";
import { Spinner } from "@/shared/components/ui/spinner";
import { cn } from "@/shared/utils/cn";

/*
 * The last chip of a set you can add to (challenge rules, tags, a planned
 * Pokémon's custom role): dashed, as every not-yet-added thing is. Tapped,
 * it becomes a field the size of a chip in its place, with no other
 * buttons: Enter adds, Escape or tapping away cancels. `onSubmit` returns
 * an error to show, or null once it's added.
 */
export const AddChip = ({
  disabled = false,
  label,
  maxLength,
  onSubmit,
  placeholder,
}: {
  disabled?: boolean;
  label: string;
  maxLength: number;
  onSubmit: (name: string) => Promise<string | null> | string | null;
  placeholder: string;
}) => {
  const errorId = useId();
  const inputRef = useRef<HTMLInputElement>(null);
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
      const failure = await onSubmit(name.trim());

      if (failure) {
        setError(failure);
        inputRef.current?.focus();
        return;
      }

      close();
    });
  };

  if (!isOpen) {
    return (
      <ChoiceChip
        variant="add"
        disabled={disabled}
        onClick={() => setIsOpen(true)}
      >
        {label}
      </ChoiceChip>
    );
  }

  return (
    <form onSubmit={submit} className="grid gap-1.5">
      <span
        className={cn(
          "bg-surface-2 text-14 focus-within:ring-action/40 inline-flex min-h-10 items-center gap-1.5 rounded-full pr-2 pl-4 font-bold focus-within:ring-2",
          error && "ring-danger/60 ring-2",
        )}
      >
        {isAdding ? (
          <Spinner className="text-ink-2 size-3.5" />
        ) : (
          <AppIcon
            icon={appIcons.actions.create}
            size="sm"
            className="text-ink-2"
          />
        )}
        <input
          ref={inputRef}
          autoFocus
          aria-label={placeholder}
          aria-invalid={error ? true : undefined}
          aria-describedby={error ? errorId : undefined}
          value={name}
          maxLength={maxLength}
          placeholder={placeholder}
          readOnly={isAdding}
          enterKeyHint="done"
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
          onBlur={() => {
            if (!isAdding) close();
          }}
          className="text-ink placeholder:text-ink-3 w-40 min-w-0 bg-transparent outline-none sm:w-48"
        />
      </span>
      {error ? <FieldError id={errorId}>{error}</FieldError> : null}
    </form>
  );
};
