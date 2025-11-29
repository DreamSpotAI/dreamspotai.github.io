import type { Route } from "./+types/home";
import { Chatbot } from "../chatbot/chatbot";

export const meta: Route.MetaFunction = ({ }: Route.MetaArgs) => [
  { title: "Chat - DreamSpotAI" },
  { name: "description", content: "Welcome DreamSpotAI, just ask the and we map your journey" },
]

export default function Home() {
  return <Chatbot />;
}
