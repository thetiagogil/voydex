import { trackingItemBodySchema } from "@/features/play/api/schemas";
import { checkTrackingItem } from "@/features/play/server/play-tracking";
import {
  badRequestResponse,
  errorResponse,
  jsonResponse,
  parseJsonBody,
} from "@/lib/api/route";
import { NextRequest } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    if (!playId) return badRequestResponse("Missing play id");

    const parsed = await parseJsonBody(request, trackingItemBodySchema);
    if (parsed.error) return parsed.error;

    const { data, error } = await checkTrackingItem(
      playId,
      parsed.data.trackingItemId,
    );

    if (error) return errorResponse(error);

    return jsonResponse(data);
  } catch (error: unknown) {
    return errorResponse(error);
  }
}
