
/*
 * 
 * remote cigarette-smokers problem
 * cigsmo_rpc.x: rpcgen source
 *
 */


/* structure definition of the structure, returned by the server 
 * when a client requests for resources through REQUEST_RESOURCES(void)
 * function
 */

struct resources
{
    bool TOBACCO;
    bool PAPER;
    bool MATCHES;

    char time_processed[30];
};

/* structure returned by function LOCK_RESOURCES(void)
 */
struct param_1
{
    bool successful;
    char time_processed[30];
};

/* parameter passed by all the functions, while calling a server
 * function. It contains the identity of the client
 */
struct param_2
{
    /* identity of the client */
    int id;
};

/* rpcgen will generate macro definitions for CIGSMOPROG, CIGSMOVERS and AGENT
 * in the header file cigsmo_rpc.h.  
 */
program CIGSMOPROG {
    version CIGSMOVERS
    {
	struct resources REQUEST_RESOURCES(param_2) = 1;
    	struct param_1 LOCK_RESOURCES(param_2) = 2;
 	struct param_1 GENERATE_RESOURCES(param_2) = 3;
    } = 1;
} = 0x20fff100;		/* RPC program number */


