#include <iostream>
#include "DataBaseUtil/DB.h"
#include "Models/Employee/Divsion.h"

int main() {
    DB::start("user=postgres password=postgres dbname=postgres host=localhost port=5432");
    auto test = Divsion::findById(1);
    return 0;
}
