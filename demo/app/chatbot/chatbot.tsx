import { useEffect, useRef, useState, type FormEvent } from "react";
import { Prompt, type PromptProps } from "./prompt";

export function Chatbot() {
  const [inputValue, setInputValue] = useState("");

  const [prompts, setPrompts] = useState<PromptProps[]>([
  ]);

  const messagesEndRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [prompts]);

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
  };


  return (
    <>
      <div className="flex flex-col gap-5 w-full h-full flex-1 p-5 overflow-y-scroll">
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


