"use client";

import { useRef, useState } from "react";

import type { DevTestAccount } from "@/features/auth/dev-test-account";
import { SearchSelect } from "@/shared/components/search-select";
import {
  Field,
  FieldDescription,
  FieldLabel,
} from "@/shared/components/ui/field";

const setFormField = (form: HTMLFormElement, name: string, value: string) => {
  const field = form.elements.namedItem(name);

  if (field instanceof HTMLInputElement) {
    field.value = value;
  }
};

/*
 * Local development only: pick one of the seeded test accounts and its email
 * and password fill in, each with a line on what it is there to test. Log
 * in renders it only while the dev server talks to the local stack.
 */
export const DevAccountPicker = ({
  accounts,
}: {
  accounts: DevTestAccount[];
}) => {
  const fieldRef = useRef<HTMLDivElement>(null);
  const [email, setEmail] = useState<string | null>(null);

  return (
    <Field
      ref={fieldRef}
      className="border-line rounded-lg border-[1.5px] border-dashed p-3.5"
    >
      <FieldLabel htmlFor="dev-test-account">Test account</FieldLabel>
      <SearchSelect
        id="dev-test-account"
        placeholder="Search the local accounts"
        value={email}
        options={accounts.map((account) => ({
          detail: `${account.email} · ${account.description}`,
          label: account.label,
          value: account.email,
        }))}
        onValueChange={(value) => {
          setEmail(value);

          const account = accounts.find((each) => each.email === value);
          const form = fieldRef.current?.closest("form");

          if (account && form) {
            setFormField(form, "email", account.email);
            setFormField(form, "password", account.password);
          }
        }}
      />
      <FieldDescription>
        Local development only. Fills in the email and password.
      </FieldDescription>
    </Field>
  );
};
