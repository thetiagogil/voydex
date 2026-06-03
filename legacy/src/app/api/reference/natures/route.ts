import { errorResponse, jsonResponse } from "@/lib/api/route";
import { getNaturesWithStats } from "@/shared/server/reference/natures";

export async function GET() {
  try {
    const { data, error } = await getNaturesWithStats();

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
