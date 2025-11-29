import { Prompt } from "./prompt";

export function Chatbot() {
  return (
    <>
      <div className="flex flex-col gap-5 justify-end bg-blue-800 w-full h-full flex-1 p-5 overflow-y-scroll">
        <Prompt isUser={true} />
        <Prompt isUser={false} />
      </div>
      <div className="relative w-full">
        <input
          className="bg-green-400 w-full text-2xl rounded-2xl p-3 pr-10"
          type="text"
          name=""
          id=""
        />
        <button
          type="submit"
          className="absolute inset-y-0 right-0 flex items-center pr-4 cursor-pointer"
        >
          <span className="w-10 h-10 bg-[url(app/chatbot/assets/send.svg)] bg-no-repeat bg-cover"></span>
        </button>
      </div>
    </>
  );
}


