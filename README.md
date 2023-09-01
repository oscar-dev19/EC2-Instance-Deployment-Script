# File Sorter: Automated Downloads Directory Organizer

File Sorter is a versatile and efficient Bash script designed to streamline the process of managing cluttered Downloads directories. This script employs the power of the `inotifywait` command to actively monitor incoming file events. Upon detecting a new file, File Sorter intelligently categorizes it based on its extension, subsequently moving it to an appropriate subdirectory. This automation eliminates the need for manual file sorting and enhances overall productivity.

## Features

- **Automated File Sorting:** Automatically organizes newly downloaded files into dedicated subdirectories based on their file extensions.
- **Real-time Monitoring:** Utilizes the `inotifywait` command to instantly respond to file creation or movement events within the Downloads directory.
- **Customization:** Easily adaptable and extendable to support additional file types and sorting criteria.
- **User-friendly:** Designed to be simple to set up and operate, contributing to a seamless user experience.

## Prerequisites

Ensure the following package is installed on your system:

- **inotify-tools:** Required for using the `inotifywait` command. On Ubuntu or Debian-based systems, install it using `sudo apt-get install inotify-tools`.

## Use Cases

1. **Efficient File Management:** File Sorter simplifies the task of keeping the Downloads directory organized, making it an ideal tool for individuals dealing with frequent file downloads.

2. **Productive Workflow:** Developers and content creators can benefit from a clutter-free Downloads directory, enhancing focus and workflow efficiency.

3. **Automated Backups:** Combine File Sorter with backup utilities to automatically sort and categorize newly downloaded backup files.

## Examples

- Automatically move a newly downloaded "report.pdf" file to the "Documents" subdirectory.
- Instantly sort an incoming "vacation.jpg" image file into the "Images" subdirectory.
- Seamlessly organize a downloaded "presentation.pptx" file under the "Documents" category.

