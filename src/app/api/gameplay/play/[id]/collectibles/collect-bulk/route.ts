import { collectEntriesBulk } from "@/services/gameplay/play-collectibles";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { collectibleEntryIds } = await request.json();

    if (
      !Array.isArray(collectibleEntryIds) ||
      collectibleEntryIds.length === 0
    ) {
      return NextResponse.json(
        { error: "collectibleEntryIds array is required" },
        { status: 400 },
      );
    }

    const result = await collectEntriesBulk(playId, collectibleEntryIds);
    return NextResponse.json(result);
  } catch (error: unknown) {
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to bulk collect entries",
      },
      { status: 500 },
    );
  }
}
