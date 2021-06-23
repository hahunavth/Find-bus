#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "cgen/gtvector.h"
#include "cgen/s2i.h"
#include "cgen/svector.h"
#include "cgraph/cgraph.h"

bn_tree_t work2i = NULL_PTR;
vector_t i2work = NULL_PTR;

vector_t nodes = NULL_PTR;
cgraph_ivec_t edges = NULL_PTR;
cgraph_rvec_t weights = NULL_PTR;

void init_global() {
  work2i = s2i_create();
  i2work = gtv_create();
  nodes = gtv_create();
  edges = cgraph_ivec_create();
  weights = cgraph_rvec_create();
}

void trim(char *s)
{
  int  len = strlen(s);
  //Xoa dau cach o cuoi
  for (int j = len - 1; j >= 0; j--) {
    if (s[j] == ' ' || s[j] == '\n' || s[j] == '\r') {
      s[j] = '\0';
    } else {
      break;
    }
  }
  len = strlen(s);
  // Xoa dau cach o dau
  if (s[0] == ' ') {
    int i;
    for (i = 1 ; i < len; i++) {
      if (s[i] != ' ' )
        break;
    }
    for (int j = i; j <= len; j++) {
      s[j - i] = s[j];
    }
  }
}

long get_save_id(bn_tree_t si, vector_t *is, char *s) {
  long id = s2i_value(si, s);
  if (id != k_s2i_invalid) {
    return id;
  }
  svec_push_back(is, s);
  id = gtv_size(*is) - 1;
  s2i_insert(si, s, id);
  return id;
}

void parse_input(char *fname) {
  FILE *inp = fopen(fname, "r");
  if (inp == NULL) {
    perror("fsrc == NULL\n");
    exit(0);
  }

  while (!feof(inp)) {
    char *line = (char *)calloc(1000, sizeof(char));

    if (!fgets(line, 1000, inp)) {
      break;
    }
    char *cur = strchr(line, ':');
    if (!cur) {
      continue;
    }
    *cur = '\0';
    char *work_name = line;
    char *work_dependency = cur + 2;
    trim(work_dependency);
    long id = get_save_id(work2i, &i2work, work_name);
    // printf("[%ld, %s]", id, work_name);
    // printf("%s", work_name);

    char *space = " ";
    char *hyphen = "-";
    char *token = NULL;
    token = strtok(cur + 1, space);
    while (token != NULL) {
      char *sperate = strchr(token, '-');
      if (strlen(token) > 0)
        *sperate = '\0';
      char *work = calloc(100, sizeof(char));
      strcpy(work, token);
      int days = atoi(sperate + 1);
      // printf("%s %d\n", work, days);

      long id2 = get_save_id(work2i, &i2work, work);
      // printf("[%ld, %s]", id2, work);
      cgraph_ivec_push_back(&edges, id2);
      cgraph_ivec_push_back(&edges, id);

      cgraph_rvec_push_back(&weights, (double)days);

      // printf("%s", token);
      token = strtok(NULL, space);
    }

    free(line);
  }
}

void dfs_search(cgraph_t g, int input_id) {
  cgraph_ivec_t order = cgraph_ivec_create();

  cgraph_dfs(g, input_id, CGRAPH_IN, false, &order, NULL, NULL, NULL);
  // cgraph_ivec_print(order);
  size_t sz = cgraph_ivec_size(order);
  for (CGRAPH_INTEGER i = 0; i < sz; ++i) {
    if (order[i] >= 0 && order[i] != input_id) {
      dfs_search(g, order[i]);
      printf("%s ", i2work[order[i]]);
    }
  }
}

void func2 (cgraph_t g, cgraph_ivec_t res) {
  char input[1000];
  printf("Nhap ten cong viec: ");
  scanf("%s", input);
  trim(input);
  int input_id = s2i_value(work2i, input);
  if (input_id != -1) {
    printf("\tCac cong viec can lam trước %s:\n", input);
    // for (int i = 0 ; i < cgraph_ivec_size(res); i++) {
    // if (res[i] < input_id)
    // printf("%d: %s\n", res[i] + 1 , i2work[res[i]]);
    // }
    dfs_search(g, input_id);
  } else {
    printf("\tKhong tim thay cong viec");
  }
  printf("\n");
}

void func3(cgraph_t g, cgraph_ivec_t res) {
  char input[1000];
  scanf("%s", input);
  trim(input);
  if (input[0] == 'y' || input[0] == 'Y') {
    printf("2. Thong tin cong viec: \n");
    func2(g, res);
    printf("3. Thưc hiện lại 2 [y/n]: ");
    func3(g, res);
  }
}

void func4(cgraph_ivec_t res) {
  for (int i = 0 ; i < cgraph_ivec_size(res); i++) {
    if (i == 0)
      printf("%s", i2work[res[i]]);
    else
      printf(" -> %s", i2work[res[i]]);
  }
  printf("\n");
}

long func5() {
  char input[1000];
  printf("Nhap ten cong viec: ");
  scanf("%s", input);
  trim(input);
  long id = s2i_value(work2i, input);
  return id;
}

int func6(cgraph_t g) {
  return cgraph_is_dag(g);
}



int main() {
  init_global();
  parse_input("../k55-final-exam-data.txt");

  cgraph_t g = cgraph_create(edges, 0, true);
  cgraph_ivec_print(edges);
  cgraph_print(g);

  printf("1. In số đỉnh, cạnh\n");
  printf("\tSố đỉnh: %d\n", gtv_size(i2work));
  printf("\tSố cạnh: %d\n", cgraph_ivec_size(g->from));
  printf("\n");

  printf("2. Thong tin cong viec: \n");
  cgraph_ivec_t res = cgraph_ivec_create();
  cgraph_topological_sorting(g, &res, CGRAPH_OUT);
  // for (int i = 0 ; i < cgraph_ivec_size(res); i++) {
  //   printf("%d: %s\n", res[i] + 1 , i2work[res[i]]);
  // }
  func2(g, res);
  printf("\n");

  printf("3. Thưc hiện lại 2 [y/n]: ");
  func3(g, res);
  printf("\n");

  printf("4. Thứ tự hoàn thành các công việc: \n");
  func4(res);
  printf("\n");

  printf("5. Thời gian tối thiểu để hoàn thành công việc: ");
  int id = (int)func5();
  if (id >= 0) {
    cgraph_rvec_t neg_weights = cgraph_rvec_create();     //weigh -> 1/weigh
    for (int i = 0; i < cgraph_rvec_size(weights); i++) {
      cgraph_rvec_push_back(&neg_weights, 1 / weights[i]);
    }
    cgraph_ivec_t v = cgraph_ivec_create();
    cgraph_ivec_t e = cgraph_ivec_create();
    cgraph_get_shortest_path_dijkstra(g, &v, &e, 0, id, neg_weights, CGRAPH_OUT);
    double min_time = 0;
    for (int i = 0; i < cgraph_ivec_size(v); i++)
      if (i == 0)
        printf("%s", i2work[v[i]]);
      else
        printf(" -> %s", i2work[v[i]]);
    printf("\n");
    printf("Thời gian tối thiểu để hoàn thành công việc: \n");
    for (int i = 0; i < cgraph_ivec_size(e); i++) {
      if (i == 0)
        printf("%.0f", weights[e[i]]);
      else
        printf(" + %.0f", weights[e[i]]);
      min_time += weights[e[i]];
    }
    printf(" = %.0f\n\n", min_time);
  } else {
    printf("Khong tim thay cong viec!\n\n");
  }

  printf("6. Kiem tra tinh hop le cua do thi: \n");
  if (cgraph_is_dag(g)) {
    printf("Do thi hop le");
  } else {
    printf("Do thi k hop le!");
  }

  return 0;
}