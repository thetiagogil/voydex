import { loginSchema } from "@/features/auth/forms/schemas";
import { logIn } from "@/features/auth/server/auth";
import {
  errorResponse,
  jsonResponse,
  parseJsonBody,
} from "@/lib/api/route";
import type { NextRequest } from "next/server";

export async function POST(req: NextRequest) {
  try {
    const parsed = await parseJsonBody(req, loginSchema);
    if (parsed.error) return parsed.error;

    const { data, error } = await logIn(parsed.data);
    if (error) return errorResponse(error, 400);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error, 503);
  }
}
