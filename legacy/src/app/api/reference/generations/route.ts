import { errorResponse, jsonResponse } from "@/lib/api/route";
import { getGenerations } from "@/shared/server/reference/generations";

export async function GET() {
  try {
    const { data, error } = await getGenerations();

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
