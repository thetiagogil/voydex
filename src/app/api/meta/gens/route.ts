import { getGens } from "@/services/meta/gen";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getGens();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data);
}
