# EpitechDocker

This container allows to Epitech students to build and test their projects with the same linux distribution than the unit tests.

## Prerequisites

Obviously, you will need to be an Epitech Student and have a valid login to use the features of the container.

To install this container, you will need to install [Docker](https://www.docker.com/).
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly.
It exists on Linux, Windows and MacOS

Then, you will need to generate a sshkey on your local machine with the following command:

```
ssh-keygen -t rsa
```

## Installing container

After cloning the project at the root of your working repository, go to the EpitechDocker folder, open the Makefile file and, in the first line, replace firstname.lastname@epitech.eu with your epitech login.
Then execute the following command:

```
make build
```
It will build the container, it can takes a few minutes.
If it crashes, verify that docker is installed and the file id_rsa.pub in ~/.ssh/ directory.

If it success, enter:

```
make run
```

You are now in the container !
You can see there is a copy of the folder where you put the project, it allows you to access to your project directly in the container.

To quit the container, enter:

```
exit
```

You will need to execute "make run" every time you want to enter to the container.

## Executables

This project comes with some executables that can be usefulls when you will work on your project:
- clone $1 (clone the $1 repository)
- uploadssh (upload your sshkey to blih)
- mrclean (clean junk files)
- push (push your project)
- repogit $1 (create the $1 repository and set the valid rights to ramassage-tek)

## Author

* **Lucas LE RAY** - *Initial work* - [LucasLeRay](https://github.com/LucasLeRay)# EpitechDocker
