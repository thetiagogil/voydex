import { errorResponse, jsonResponse } from "@/lib/api/route";
import { getClaims } from "@/features/auth/server/auth";

export async function GET() {
  try {
    const { data, error } = await getClaims();
    if (error) return errorResponse(error, 400);
    return jsonResponse(Boolean(data));
  } catch (error: unknown) {
    return errorResponse(error, 503);
  }
}
