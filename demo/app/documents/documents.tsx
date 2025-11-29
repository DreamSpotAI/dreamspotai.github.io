import { Doc, SupportedFileType } from "./doc";

type UserDetailsProp = {
    userName: String,
    destination: String
}

export function Documents({ userName, destination }: UserDetailsProp) {
    return (
        <>
            <h3 className="text-3xl text-center font-bold mb-10">{userName}&apos; journey to {destination} documents</h3>
            <div className="flex  flex-col gap-3">
                <Doc file={{ fileName: "Tokyo Central Hotel", filePath: "", fileType: SupportedFileType.PDF }}
                    location={"Tokyo"}
                    startDate={new Date(2027, 1, 10)}
                    endDate={new Date(2028, 1, 10)}
                />
                <Doc file={{ fileName: "Tokyo Central Hotel", filePath: "", fileType: SupportedFileType.TXT }}
                    location={"Tokyo"}
                    startDate={new Date(2027, 1, 10)}
                    endDate={new Date(2028, 1, 10)}
                />
            </div>
        </>
    );
}