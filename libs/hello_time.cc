#include <chrono>
#include <ctime>
#include <iostream>

void current_time() {
  auto now = std::chrono::system_clock::now();
  std::time_t now_c = std::chrono::system_clock::to_time_t(now);
  std::cout << "Current time: " << std::ctime(&now_c);
}
