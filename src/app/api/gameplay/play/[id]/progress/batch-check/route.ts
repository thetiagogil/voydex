import { checkPlayProgressItemBatch as checkProgressItemBatch } from "@/services/gameplay/play-progress-check-batch";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await context.params;
    const body = await request.json();
    const { progressItemIds, categoryId } = body;

    if (!progressItemIds || !Array.isArray(progressItemIds)) {
      return NextResponse.json(
        { error: "progressItemIds array is required" },
        { status: 400 },
      );
    }

    if (!categoryId) {
      return NextResponse.json(
        { error: "categoryId is required" },
        { status: 400 },
      );
    }

    await checkProgressItemBatch(playId, progressItemIds);

    return NextResponse.json({ success: true });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
