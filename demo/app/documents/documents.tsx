import { useState, type ChangeEvent } from "react";
import { Doc, SupportedFileType, type DocProp } from "./doc";

type UserDetailsProp = {
    userName: String,
    destination?: String
}

export function Documents({ userName, destination = "somewhere" }: UserDetailsProp) {
    const [documents, setDocuments] = useState<DocProp[]>([
    ]);

    const handleFileChange = (event: ChangeEvent<HTMLInputElement>) => {
        const selectedFile = event.target.files?.[0];

        if (selectedFile) {
            const fileName = selectedFile.name;
            const fileExtension = fileName.split('.').pop()?.toUpperCase() || '';

            const fileType: SupportedFileType = Object.values(SupportedFileType).includes(fileExtension as SupportedFileType)
                ? fileExtension as SupportedFileType
                : SupportedFileType.PDF;

            const newDoc: DocProp = {
                file: {
                    fileName: fileName,
                    filePath: URL.createObjectURL(selectedFile),
                    fileType: fileType,
                },
                location: "Tokyo",
                startDate: new Date(2027, 1, 10),
                endDate: new Date(2028, 1, 10),
            };

            setDocuments((prevDocuments) => [...prevDocuments, newDoc]);

            event.target.value = '';
        }
    };

    return (
        <>
            <h3 className="text-3xl text-center font-bold mb-10 bg-purple p-5">{userName}&apos; journey to {destination} documents</h3>
            <div className="flex flex-1 flex-col gap-3">
                {documents.map((doc, index) => (
                    <Doc
                        key={index}
                        file={doc.file}
                        location={doc.location}
                        startDate={doc.startDate}
                        endDate={doc.endDate}
                    />
                ))}
            </div>
            <input type="file" id="files" className="hidden" onChange={handleFileChange} />
            <label htmlFor="files" className="w-full text-6xl text-center bg-green">+</label>
        </>
    );
}