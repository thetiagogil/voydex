"use client";

import { useId, useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/shared/components/ui/dialog";
import { Field, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

type PlannerNameDialogProps = {
  gameName: string;
  onOpenChange: (open: boolean) => void;
  onSave: (name: string) => void;
  open: boolean;
};

/*
 * Saving a Plan that has no name yet asks for one first, so My Plans never
 * fills up with "Untitled Plan".
 */
export const PlannerNameDialog = ({
  gameName,
  onOpenChange,
  onSave,
  open,
}: PlannerNameDialogProps) => {
  const [name, setName] = useState("");
  const inputId = useId();

  return (
    <Dialog
      open={open}
      onOpenChange={(nextOpen) => {
        if (!nextOpen) setName("");
        onOpenChange(nextOpen);
      }}
    >
      <DialogContent className="sm:max-w-md">
        <form
          className="grid gap-5"
          onSubmit={(event) => {
            event.preventDefault();
            if (!name.trim()) return;
            onSave(name.trim());
            setName("");
          }}
        >
          <DialogHeader>
            <DialogTitle>Name your Plan</DialogTitle>
            <DialogDescription>
              It&apos;s how you&apos;ll find it in My Plans.
            </DialogDescription>
          </DialogHeader>
          <Field>
            <FieldLabel htmlFor={inputId}>Plan name</FieldLabel>
            <Input
              id={inputId}
              autoFocus
              autoComplete="off"
              maxLength={200}
              value={name}
              placeholder={`For example, ${gameName} sweep`}
              onChange={(event) => setName(event.currentTarget.value)}
            />
          </Field>
          <DialogFooter>
            <Button
              type="button"
              variant="secondary"
              onClick={() => onOpenChange(false)}
            >
              Cancel
            </Button>
            <Button type="submit" disabled={!name.trim()}>
              <AppIcon icon={appIcons.status.active} inline="start" />
              Save Plan
            </Button>
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  );
};
