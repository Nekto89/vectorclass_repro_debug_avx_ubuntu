#include "vectorclass/vectorclass.h"

Vec4d f(Vec4d a) {
    return permute4<1, 2, 0, 3>(a);
}
