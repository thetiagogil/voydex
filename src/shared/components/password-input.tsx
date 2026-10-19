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
          variant="soft"
          size="sm"
          aria-label={isVisible ? "Hide password" : "Show password"}
          onClick={() => setIsVisible((visible) => !visible)}
        >
          {isVisible ? "Hide" : "Show"}
        </InputGroupButton>
      </InputGroupAddon>
    </InputGroup>
  );
};
