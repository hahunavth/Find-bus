#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "cgraph/cgraph.h"
#include "cgen/s2i.h"
#include "cgen/svector.h"
#include "libfdr/jrb.h"

#define LINE_LEN  10000
#define NAME_LEN  1000

bn_tree_t s2i = NULL;
vector_t i2s = NULL;
int max_id = 0;


void clear_whitespace(char *s)
{
  int  len = strlen(s);
  //Xoa dau cach o cuoi
  for(int j = len-1; j > 0; j--) {
    if(s[j] == ' ' || s[j] == '\n' || s[j] == '\r') {
      s[j] = '\0';
    }else{
      break;
    }
  }
  len = strlen(s);
  // Xoa dau cach o dau
  if(s[0] == ' '){
    int i = 0;
    for( ; i < len; i++) {
      if(s[i] != ' ' )
        break;
    }
    for(int j = i; j <= len; j++) {
      s[j-i] = s[j];
    }
  }
}

int main() {
  s2i = s2i_create();  //String to int
	i2s = gtv_create();	 //Int to string

  cgraph_ivec_t edges = cgraph_ivec_create();

  FILE *fsrc = fopen("../hanoibus.txt","r");
  if(fsrc == NULL) {
    perror("fsrc == NULL\n");
    exit(0);
  }

  char *check = NULL;
  do{
    char *line = (char *)calloc(LINE_LEN, sizeof(char));
    check = fgets(line, LINE_LEN, fsrc);
    // printf("[[[[[%s]]]]]\n", line);
    if(strlen(line) != 0){
      char *bus_name = (char *) calloc( 10, sizeof(char));
      char *chieu = (char *) calloc( 10, sizeof(char));
      sscanf(line, "Chiều %s tuyến %s[^:]", chieu, bus_name);   //REGEX: get bus name
      for(int i = 0; i < 10; i++) {                             //CLEAR ':'
        if(bus_name[i] == ':') {
          bus_name[i] = '\0';
        }
      }
      printf("\n%s\n\n", bus_name);

      char *str_diem_dung_start = strchr(line,':') + 1; //Tim ki tu : dau tien
      char *str_diem_dung_end = NULL;
      int prevVal = -1;
      int value = 0;
      char *key = NULL;
      do {
        str_diem_dung_end = strchr(str_diem_dung_start, '>');
        key = (char *) calloc(NAME_LEN, sizeof(char));

        if(str_diem_dung_end == NULL) {  //GET ten_diem_dung
          strcpy(key, str_diem_dung_start);
          clear_whitespace(key);
        }else{
          int str_diem_dung_len = str_diem_dung_end - str_diem_dung_start - 1;
          // printf("%d\n", str_diem_dung_len);
          strncpy(key, str_diem_dung_start, str_diem_dung_len);
          clear_whitespace(key);
          // printf("%d", key[strlen(key)-1]);
        }             //-> key
        // printf("[[[%s]]]\n", key);

        int searchVal = s2i_value(s2i, key);
        if(searchVal == k_s2i_invalid){               //PUSH -> SEARCH STRUCTER
          value = max_id;
          s2i_insert(s2i, key, value);
          gtype gt;
          gt.i = (long)value;
          // gtv_push_back(&i2s, gt);
          svec_push_back(&i2s, key);
          max_id++;
        }else{
          value = (int) searchVal;
        }             //->s2i, i2s

        if(prevVal != -1){
          cgraph_ivec_push_back(&edges, prevVal);    //ADD EDGE TO VECTOR
          cgraph_ivec_push_back(&edges, value);      // prevVal -> value
        }

        prevVal = value;                         //FOR NEXT LOOP
        str_diem_dung_start = str_diem_dung_end + 1;
      }while(str_diem_dung_end != NULL);

      free(line);
    }
  }while(check != NULL);

  cgraph_t g = cgraph_create(edges, 0, true);

  char *from=(char*)calloc(NAME_LEN,sizeof(char));
  char *to=(char*)calloc(NAME_LEN,sizeof(char));

  for(;;){
    printf("==========TÌM ĐƯỜNG ĐI==========\n");
    printf("Nhập xuất phát = 0000 sẽ kết thúc chương trình\n");
    printf("xuất phát: ");  
    fgets(from, NAME_LEN, stdin);  /* TODO: WARNING FGETS CAN NOT SEARCH */
    clear_whitespace(from);
    // gets(from);
    if(strcmp(from,"0000")==0) break;
    int from_id = s2i_value(s2i, from);
    printf("%d",from_id);
    while(from_id == k_s2i_invalid)
    {
      printf("Điểm dừng không tồn tại!\n");
      if(strcmp(from,"0000")==0) break;
      printf("xuất phát: ");
      fgets(from, NAME_LEN, stdin);
      clear_whitespace(from);
      from_id = s2i_value(s2i, from);
    }
    printf("Đến: ");
    fgets(to, NAME_LEN, stdin);
    clear_whitespace(to);
    int to_id = s2i_value(s2i, to);
    while(to_id == k_s2i_invalid)
    {
      printf("Điểm dừng không tồn tại!\n");
      printf("Đến: ");
      fgets(to, NAME_LEN, stdin);
      clear_whitespace(to);
      to_id = s2i_value(s2i, to);
    }
    cgraph_ivec_t vpath = cgraph_ivec_create(),
                  epath = cgraph_ivec_create();
    cgraph_get_shortest_path(g, &vpath, &epath, 
                            from_id, to_id, CGRAPH_OUT);
    printf("\n==Lộ trình cần đi:\n");
    JRB node=NULL;
    for(int i=0;i<cgraph_ivec_size(epath);i++)
    {
      int tmp_from_id, tmp_to_id;
      cgraph_edge(g, epath[i], &tmp_from_id, &tmp_to_id);
      printf("%s > %s\n",i2s[tmp_from_id].s ,i2s[tmp_to_id].s);
    }

    cgraph_ivec_free(&vpath);
    cgraph_ivec_free(&epath);
  }

  free(from);free(to);
  fclose(fsrc);
  cgraph_ivec_free(&edges);
  cgraph_destroy(&g);

  return 0;
}

