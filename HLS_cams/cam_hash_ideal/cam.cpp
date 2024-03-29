#include "hls_stream.h"
#include "ap_int.h"
#include "cam.h"


void top_function (node_t nodo, rel_t relationship, bool fatherSearch, hls::stream<node_t> &result) {

		busqueda_cam(nodo,relationship,fatherSearch,result);
}

 void busqueda_cam (node_t nodo, rel_t relationship, bool fatherSearch, hls::stream<node_t> &result) {
	 if (fatherSearch && nodo == 1) {
	 		result.write(EOT);
	 		return;
	 	}

	extern edge_t bfstree[];
	extern short FULL_CHILDREN_BUCKET_INDEX_BFS[];
	extern short FULL_PARENTS_BUCKET_INDEX_BFS[];
	ap_uint<EDGE_BITS> valor = 0;
	ap_uint<REL_BITS> node_relation =0;
	ap_uint<NODE_BITS> compare_node=0;
	short min_limit = 0, parent_limit = 0;
	bool flag = false;
	min_limit = FULL_CHILDREN_BUCKET_INDEX_BFS[nodo-1];
	parent_limit = FULL_PARENTS_BUCKET_INDEX_BFS[nodo-1];
	


	if (fatherSearch) {
		for (; parent_limit >= 0; parent_limit--) {
#pragma HLS PIPELINE
			valor = bfstree[parent_limit];
			compare_node = DST_NODE(valor);
			node_relation = valor(1, 0);
			if ((compare_node == nodo) && (node_relation == relationship)) result.write(SRC_NODE(valor));

		}
	} else {
		if (min_limit==0 && nodo != 1) {
			result.write(EOT);
			return;
		} else {
			valor = bfstree[min_limit];
			min_limit+=1;
		for (min_limit; min_limit<TREE_SIZE; min_limit++) {
#pragma HLS PIPELINE
			compare_node = SRC_NODE(valor);
			node_relation = valor(1,0);
			if (compare_node != nodo) {
				flag = true;
				break;
			}
			else if (relationship == node_relation)result.write(DST_NODE(valor));
			valor = bfstree[min_limit];
			}
			if (!flag) {
				compare_node = SRC_NODE(valor);
				node_relation = valor(1,0);
				if (compare_node == nodo && (relationship == node_relation)) result.write(DST_NODE(valor));
			}

		}
	}
result.write(EOT);
	}
