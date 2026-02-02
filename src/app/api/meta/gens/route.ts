import { getGenerations } from "@/services/meta/generation";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getGenerations();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data);
}
