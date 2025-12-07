import { useEffect, useRef, useState, type FormEvent } from "react";
import { Prompt, type PromptProps } from "./prompt";

import { textToHtml } from "./utils";

const GEMINI_PROXY_URL = "http://localhost:3001/api/chat";

export function Chatbot() {
  const [inputValue, setInputValue] = useState("");
  const [isLoading, setIsLoading] = useState(false);

  const [prompts, setPrompts] = useState<PromptProps[]>([
  ]);

  const messagesEndRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [prompts]);

  const fetchGeminiResponse = async (userMessage: string) => {
    const thinkingPrompt: PromptProps = {
      text: "...",
      isUser: false,
      isThinking: true,
    };

    setPrompts((prev) => [...prev, thinkingPrompt]);
    setIsLoading(true);

    try {
      const apiResponse = await fetch(GEMINI_PROXY_URL, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ message: userMessage }),
      });

      if (!apiResponse.ok) {
        throw new Error(`Errore HTTP: ${apiResponse.status}`);
      }

      const data = await apiResponse.json();

      const botResponseText = textToHtml(data.response) || "";

      const botResponse: PromptProps = {
        text: botResponseText,
        isUser: false,
      };

      setPrompts((prev) => {
        const updated = prev.filter(p => !p.isThinking);
        return [...updated, botResponse];
      });

      console.log(data)

    } catch (error) {
      const errorResponse: PromptProps = {
        text: "Error getting the response",
        isUser: false,
      };
      setPrompts((prev) => {
        const updated = prev.filter(p => !p.isThinking);
        return [...updated, errorResponse];
      });

    } finally {
      setIsLoading(false);
    }
  };


  const handleSubmit = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const trimmedInput = inputValue.trim();

    if (trimmedInput === "") return;

    const newPrompt: PromptProps = {
      text: trimmedInput,
      isUser: true,
    };

    setPrompts((prev) => [...prev, newPrompt]);

    setInputValue("");
    // Propose a 10 - day itinerary, from the 3rd of January, for me and my wife to South Korea, including flight and hotel recommendations.We want to visit historic museums and major cities for shopping, with no city - to - city travel exceeding 2 hours.End each day at a fancy dinner restaurant not far from the place we are visiting.
    const requestAppend = " Prioritize comfort while minimizing costs as much as possible. give me all the direct links to book things and prices and give me the direct links to book things so i can avoid research on my own"
    fetchGeminiResponse(trimmedInput + requestAppend);
  };


  return (
    <>
      <div className="flex flex-col gap-20 w-full h-full flex-1 p-5 overflow-y-scroll">
        {prompts.length === 0 ? (
          <div className="text-center mt-30 p-5 bg-purple">
            <p className="font-bold text-4xl">WHERE DO YOU WANT TO GO?</p>
          </div>
        ) : (
          prompts.map((doc, index) => (
            <Prompt key={index} text={doc.text} isUser={doc.isUser} />
          ))
        )}
        <div ref={messagesEndRef} />
      </div>
      <form onSubmit={handleSubmit} className="relative w-full">
        <input
          className="bg-green w-full text-2xl rounded-2xl p-3 pr-10"
          type="text"
          value={inputValue}
          onChange={(e) => setInputValue(e.target.value)}
          disabled={isLoading}
          placeholder={isLoading ? "Waiting for response..." : "Write your prompt..."}
        />
        <button
          type="submit"
          className="absolute inset-y-0 right-0 flex items-center pr-4 cursor-pointer"
        >
          <span className="w-10 h-10 bg-[url(app/chatbot/assets/send.svg)] bg-no-repeat bg-cover"></span>
        </button>
      </form>
    </>
  );
}


