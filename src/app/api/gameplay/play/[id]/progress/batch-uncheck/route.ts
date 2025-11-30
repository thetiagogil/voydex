import { uncheckProgressItemBatch } from "@/services/gameplay/play-progress-uncheck-batch";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
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

    const result = await uncheckProgressItemBatch(playId, progressItemIds);

    if (result.error) {
      return NextResponse.json(
        { error: result.error.message },
        { status: 500 },
      );
    }

    return NextResponse.json({ success: true, data: result.data });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
