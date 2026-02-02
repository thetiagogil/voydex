import { NextResponse } from "next/server";

/**
 * API response utilities for consistent response formatting.
 * All endpoints should use these helpers for standardized responses.
 */

/**
 * Success response with data wrapper.
 *
 * @example
 * return success({ users: [...] });
 * // Returns: { data: { users: [...] } }
 */
export const success = <T>(data: T) => {
  return NextResponse.json({ data });
};

/**
 * Success response without data wrapper (for lists).
 * Use when returning arrays directly.
 *
 * @example
 * return successRaw([{ id: 1 }, { id: 2 }]);
 * // Returns: [{ id: 1 }, { id: 2 }]
 */
export const successRaw = <T>(data: T) => {
  return NextResponse.json(data);
};

/**
 * Error response with consistent format.
 *
 * @example
 * return error("Not found", 404);
 * // Returns: { error: "Not found" } with status 404
 */
export const error = (message: string, status = 500) => {
  return NextResponse.json({ error: message }, { status });
};

/**
 * Not found response shorthand.
 *
 * @example
 * if (!user) return notFound("User not found");
 */
export const notFound = (message = "Not found") => {
  return error(message, 404);
};

/**
 * Unauthorized response shorthand.
 *
 * @example
 * if (!session) return unauthorized();
 */
export const unauthorized = (message = "Unauthorized") => {
  return error(message, 401);
};

/**
 * Bad request response shorthand.
 *
 * @example
 * if (!body.email) return badRequest("Email is required");
 */
export const badRequest = (message = "Bad request") => {
  return error(message, 400);
};
