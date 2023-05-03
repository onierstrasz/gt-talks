# gt-talks README

A place for my GT slideshows.

To run these, please [download  Glamorous Toolkit](https://gtoolkit.com) and then load this repo into the image:

```
Metacello new
	baseline: 'GtTalks';
	repository: 'github://onierstrasz/gt-talks:main/src';
	load
```

Also load the associated lepiter database:
```
BaselineOfGtTalks loadLepiter
```

# BATbern50 (in progress)

```
BATbern50Slideshow show
```

# VISSOFT 2022
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
