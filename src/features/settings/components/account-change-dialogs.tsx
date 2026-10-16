"use client";

import { AccountFormDialog } from "@/features/settings/components/account-form-dialog";
import {
  changeEmailAction,
  changePasswordAction,
} from "@/features/settings/server/account-actions";
import { PasswordInput } from "@/shared/components/password-input";
import {
  Field,
  FieldDescription,
  FieldError,
  FieldLabel,
} from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";

/* Change email: the new address, confirmed by a link Supabase sends. */
export const ChangeEmailDialog = () => (
  <AccountFormDialog
    action={changeEmailAction}
    title="Change your email"
    description="We'll send a link to confirm it. Your email changes once you open it."
    triggerLabel="Change email"
    submitLabel="Send the link"
    pendingLabel="Sending..."
    field={(error) => (
      <Field data-invalid={error ? true : undefined}>
        <FieldLabel htmlFor="new-email">New email</FieldLabel>
        <Input
          id="new-email"
          name="email"
          type="email"
          autoComplete="email"
          placeholder="you@example.com"
          aria-invalid={error ? true : undefined}
          aria-describedby={error ? "new-email-error" : undefined}
          required
        />
        {error ? <FieldError id="new-email-error">{error}</FieldError> : null}
      </Field>
    )}
  />
);

/* Change password, for the account you're signed in to. */
export const ChangePasswordDialog = () => (
  <AccountFormDialog
    action={changePasswordAction}
    title="Change your password"
    description="You'll stay logged in on this device."
    triggerLabel="Change password"
    submitLabel="Save password"
    pendingLabel="Saving..."
    field={(error) => (
      <Field data-invalid={error ? true : undefined}>
        <FieldLabel htmlFor="new-password">New password</FieldLabel>
        <PasswordInput
          id="new-password"
          name="password"
          autoComplete="new-password"
          aria-invalid={error ? true : undefined}
          aria-describedby={error ? "new-password-error" : "new-password-hint"}
          required
          minLength={6}
          maxLength={72}
        />
        {error ? (
          <FieldError id="new-password-error">{error}</FieldError>
        ) : (
          <FieldDescription id="new-password-hint">
            At least 6 characters
          </FieldDescription>
        )}
      </Field>
    )}
  />
);
