# gt-talks

A place for my GT slideshows.

```
Metacello new
	baseline: 'GtTalks';
	repository: 'github://onierstrasz/gt-talks:main/src';
	load
```

Load the associated lepiter database:
```
BaselineOfGtTalks loadLepiter
```

To preview the draft of the VISSOFT 2022 talk:
```
Vissoft2022Slideshow show
```

This is also needed for the VISSOFT slides.
```
rootDirectory := 'whitehall' asFileReference ensureDeleteAll.
repository := IceRepositoryCreator new
  remote: (IceGitRemote url: 'git@github.com:alphagov/whitehall.git');
  location: rootDirectory;
  createRepository.
rootDirectory
```
