"use client";

import { useRef, useState } from "react";

import type { DevTestAccount } from "@/features/auth/dev-test-account";
import { Button } from "@/shared/components/ui/button";
import {
  Combobox,
  ComboboxContent,
  ComboboxEmpty,
  ComboboxInput,
  ComboboxItem,
  ComboboxList,
  ComboboxTrigger,
  ComboboxValue,
} from "@/shared/components/ui/combobox";
import { FieldDescription } from "@/shared/components/ui/field";

const setFormField = (form: HTMLFormElement, name: string, value: string) => {
  const field = form.elements.namedItem(name);

  if (field instanceof HTMLInputElement) {
    field.value = value;
  }
};

/* What the search matches: the account's name, email and what it tests. */
const getAccountSearchValue = (account: DevTestAccount) =>
  [account.label, account.email, account.description].join(" ");

/*
 * Local development only: pick one of the seeded test accounts and its email
 * and password fill in. Built like the Codex's Pokémon picker: a trigger
 * that opens a searchable list, each row the account's name, email and what
 * it is there to test. Log in renders it only while the dev server talks to
 * the local stack.
 */
export const DevAccountPicker = ({
  accounts,
}: {
  accounts: DevTestAccount[];
}) => {
  const rootRef = useRef<HTMLDivElement>(null);
  const [picked, setPicked] = useState<DevTestAccount | null>(null);

  return (
    <div
      ref={rootRef}
      className="border-line flex flex-col gap-2 rounded-lg border-[1.5px] border-dashed p-3.5"
    >
      <Combobox
        items={accounts}
        value={picked}
        itemToStringLabel={getAccountSearchValue}
        itemToStringValue={(account: DevTestAccount) => account.email}
        isItemEqualToValue={(left: DevTestAccount, right: DevTestAccount) =>
          left.email === right.email
        }
        onValueChange={(account: DevTestAccount | null) => {
          setPicked(account);

          const form = rootRef.current?.closest("form");

          if (account && form) {
            setFormField(form, "email", account.email);
            setFormField(form, "password", account.password);
          }
        }}
        autoHighlight
      >
        {/* A combobox takes its name from a label, never from its text. */}
        <ComboboxTrigger
          aria-label={
            picked ? `Test account: ${picked.label}` : "Pick a test account"
          }
          render={
            <Button
              type="button"
              variant="secondary"
              className="w-full justify-between"
            />
          }
        >
          <ComboboxValue>
            {(account: DevTestAccount | null) =>
              account ? account.label : "Pick a test account"
            }
          </ComboboxValue>
        </ComboboxTrigger>
        <ComboboxContent className="w-100 max-w-[calc(100vw-2rem)]">
          <ComboboxInput
            showTrigger={false}
            placeholder="Search by name, email or what it tests"
          />
          <ComboboxEmpty>No test account matches.</ComboboxEmpty>
          <ComboboxList className="max-h-96 pt-0">
            {(account: DevTestAccount) => (
              <ComboboxItem
                key={account.email}
                value={account}
                className="min-h-14 items-start gap-3"
              >
                <span
                  aria-hidden
                  className="bg-surface-2 text-ink-2 text-14 grid size-11 shrink-0 place-items-center rounded-full font-extrabold"
                >
                  {account.label.slice(0, 1)}
                </span>
                <span className="min-w-0 flex-1">
                  <span className="block truncate font-extrabold">
                    {account.label}
                  </span>
                  <span className="text-12 text-ink-3 block truncate font-bold">
                    {account.email}
                  </span>
                  <span className="text-12 text-ink-2 mt-0.5 block font-semibold">
                    {account.description}
                  </span>
                </span>
              </ComboboxItem>
            )}
          </ComboboxList>
        </ComboboxContent>
      </Combobox>
      <FieldDescription>
        Local development only. Fills in the email and password.
      </FieldDescription>
    </div>
  );
};
