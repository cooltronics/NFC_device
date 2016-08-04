#pragma once

#include "main.h"
#include <iostream>

#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
//#include <mutex>

#define CHILD_SUCCESSFUL 0
#define CHILD_UNSUCCESSFUL 1
#define CHILD_SIGNALED 2

#define EXT_NOT_MATCH 3
#define MESSAGE_REPEATED 4
#define OTHER 9

#define DEFAULT_INOTIFY_PATH "./"
class Inotify
{
public:
	Inotify();
	Inotify(char **argv);

	int initialize();
	int cleanup();
	void mainThread(char **argv);

private:
	inotifyFd _InotifyInfo;
	//std::mutex sVar;
};
