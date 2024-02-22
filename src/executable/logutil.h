#pragma once
#ifndef __LOGUTIL_H
#define __LOGUTIL_H
#include <iostream>
#define logI(msg) std::cout << "[INFO] " << msg << std::endl
#define logW(msg) std::cout << "[WARN] " << msg << std::endl
#define logE(msg) std::cout << "[ERRR] " << msg << std::endl
#endif