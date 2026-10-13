"use client";

import { useState, type ComponentProps } from "react";

import {
  InputGroup,
  InputGroupAddon,
  InputGroupButton,
  InputGroupInput,
} from "@/shared/components/ui/input-group";

type PasswordInputProps = Omit<ComponentProps<"input">, "type">;

/* A password field with a Show toggle, so you can check what you typed. */
export const PasswordInput = (props: PasswordInputProps) => {
  const [isVisible, setIsVisible] = useState(false);

  return (
    <InputGroup className="h-12">
      <InputGroupInput
        type={isVisible ? "text" : "password"}
        className="px-2.5 font-bold"
        {...props}
      />
      <InputGroupAddon align="inline-end">
        <InputGroupButton
          aria-label={isVisible ? "Hide password" : "Show password"}
          className="bg-surface text-13 text-ink-2 hover:bg-surface hover:text-ink h-9 rounded-sm px-3 font-extrabold sm:h-8"
          onClick={() => setIsVisible((visible) => !visible)}
        >
          {isVisible ? "Hide" : "Show"}
        </InputGroupButton>
      </InputGroupAddon>
    </InputGroup>
  );
};
