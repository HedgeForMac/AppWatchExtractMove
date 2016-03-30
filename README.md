# AppWatchExtractMove

Bash script that monitors a folder using fswatch, checks for a zip containing an app and extracts it to an output folder.

## Usage

```
$ ./startmonitoring.sh [path to watch] [name of zip containing app] [output folder]
```

Results in an app called ```[app name]_v[version number]b[build number].app``` in the output folder.

## License

MIT. See `LICENSE`.
