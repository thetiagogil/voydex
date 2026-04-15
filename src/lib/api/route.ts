import { NextResponse } from "next/server";
import { z, type ZodError } from "zod";

export const getErrorMessage = (error: unknown): string => {
  if (error instanceof Error) {
    return error.message;
  }

  if (
    typeof error === "object" &&
    error !== null &&
    "message" in error &&
    typeof error.message === "string"
  ) {
    return error.message;
  }

  return String(error);
};

export const getValidationErrorMessage = (error: ZodError): string => {
  return error.issues[0]?.message ?? "Invalid request body";
};

export const jsonResponse = <T>(
  data: T,
  init?: number | ResponseInit,
) => {
  return NextResponse.json(
    data,
    typeof init === "number" ? { status: init } : init,
  );
};

export const createdResponse = <T>(data: T) => {
  return jsonResponse(data, 201);
};

export const badRequestResponse = (message: string) => {
  return jsonResponse({ error: message }, 400);
};

export const notFoundResponse = (message: string) => {
  return jsonResponse({ error: message }, 404);
};

export const conflictResponse = (message: string) => {
  return jsonResponse({ error: message }, 409);
};

export const errorResponse = (error: unknown, status = 500) => {
  return jsonResponse({ error: getErrorMessage(error) }, status);
};

export const parseJsonBody = async <T>(
  request: Request,
  schema: z.ZodType<T>,
): Promise<
  | { data: T; error: null }
  | { data: null; error: ReturnType<typeof badRequestResponse> }
> => {
  try {
    const parsed = schema.safeParse(await request.json());

    if (!parsed.success) {
      return {
        data: null,
        error: badRequestResponse(getValidationErrorMessage(parsed.error)),
      };
    }

    return { data: parsed.data, error: null };
  } catch {
    return {
      data: null,
      error: badRequestResponse("Invalid request body"),
    };
  }
};

export const parseRequiredInt = (
  value: string | null | undefined,
  label: string,
) => {
  const parsed = Number.parseInt(value ?? "", 10);

  if (Number.isNaN(parsed)) {
    return {
      data: null,
      error: badRequestResponse(`Invalid ${label}`),
    };
  }

  return { data: parsed, error: null };
};

export const parseOptionalInt = (
  value: string | null | undefined,
  label: string,
) => {
  if (value === null || value === undefined || value === "") {
    return { data: undefined, error: null };
  }

  const parsed = Number.parseInt(value, 10);

  if (Number.isNaN(parsed)) {
    return {
      data: undefined,
      error: badRequestResponse(`Invalid ${label}`),
    };
  }

  return { data: parsed, error: null };
};

export const isDuplicateKeyError = (error: unknown) => {
  return getErrorMessage(error).includes(
    "duplicate key value violates unique constraint",
  );
};
