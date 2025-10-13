import { Field, FieldDescription, FieldLabel } from "@/components/ui/field";
import {
  cloneElement,
  forwardRef,
  isValidElement,
  type ReactElement,
  type ReactNode,
} from "react";

type Props = {
  id: string;
  label?: ReactNode;
  hint?: ReactNode;
  error?: string | null;
  children: ReactElement;
  className?: string;
};

export const FieldWrapper = forwardRef<HTMLDivElement, Props>(
  ({ id, label, hint, error, children, className }, ref) => {
    const describedId = error ? `${id}-error` : hint ? `${id}-hint` : undefined;

    const child = isValidElement(children)
      ? (() => {
          const existingProps = (children.props || {}) as Record<
            string,
            unknown
          >;
          const inject: Record<string, unknown> = {};

          if (!existingProps.id) inject.id = id;
          if (typeof existingProps["aria-invalid"] === "undefined")
            inject["aria-invalid"] = !!error;
          if (
            typeof existingProps["aria-describedby"] === "undefined" &&
            describedId
          )
            inject["aria-describedby"] = describedId;

          return cloneElement(children, inject);
        })()
      : children;

    return (
      <Field ref={ref} className={className}>
        {label && <FieldLabel htmlFor={id}>{label}</FieldLabel>}
        {child}
        {error ? (
          <FieldDescription id={`${id}-error`} className="text-destructive">
            {error}
          </FieldDescription>
        ) : (
          hint && <FieldDescription id={`${id}-hint`}>{hint}</FieldDescription>
        )}
      </Field>
    );
  }
);

FieldWrapper.displayName = "FieldWrapper";
