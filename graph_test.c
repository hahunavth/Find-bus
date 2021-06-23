#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "cgraph/cgraph.h"

int main()
{

  cgraph_ivec_t order = cgraph_ivec_create(),
                order_out = cgraph_ivec_create(),
                father = cgraph_ivec_create(),
                dist = cgraph_ivec_create();

  /*
  n = 6
  directed = true
  from  = {0, 0, 1, 1, 2, 0, 3, 3, 1}
  to    = {1, 3, 2, 3, 4, 2, 5, 1, 4}
  oi    = {0, 5, 1, 2, 3, 8, 4, 7, 6}
  ii    = {0, 7, 5, 2, 1, 3, 8, 4, 6}
  os    = {0, 3, 6, 7, 9, 9, 9}
  is    = {0, 0, 2, 4, 6, 8, 9}
  */

  cgraph_ivec_t edges = cgraph_ivec_from_array(
      (CGRAPH_INTEGER[]){
          0, 1,
          0, 3,
          1, 2,
          1, 3,
          2, 4,
          0, 2,
          3, 5,
          3, 1,
          1, 4},
      18);

  cgraph_t g = cgraph_create(edges, 0, true);

    cgraph_dfs(g, 3, CGRAPH_OUT, false, &order, &order_out, &father, &dist);

  cgraph_ivec_print(order);
  cgraph_ivec_print(order_out);
  cgraph_ivec_print(father);
  cgraph_ivec_print(dist);

  cgraph_ivec_free(&edges);
  return 0;
}
