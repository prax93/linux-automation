# Rsync

## Use Case
Rsync is a tool to effectively Copy source Files to a destination. It is not intended to be a remote to remote copy Tool.

## Usage 
```bash
rsync -rvc --dry-run --delete src dest
rsync -rvcz ~ ubuntu@host:~
```  
|---|---|
|Argument|Description|
|-r| Recursive |
|-v| Verbose |
|-c| Checksum |
|--delete | Deletes files from destination which do not exist in source |
|-z|Enables Compression During Network Transfer| 
