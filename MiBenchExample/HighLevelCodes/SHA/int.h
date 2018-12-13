#ifndef _INT_H_
#define _INT_H_

/* Number of interrupt handlers - really depends on PIC width in OR1200*/
#define MAX_INT_HANDLERS	32

/* Handler entry */
struct ihnd {
	void 	(*handler)(void *);
	void	*arg;
};


struct exception_state {
  unsigned long int gprs[30]; // GPRs 2-31
  unsigned long int epcr;
  unsigned long int esr;
};

/* A global state pointer */
extern struct exception_state * current_exception_state_struct;
  
/* Add interrupt handler */ 
int int_add(unsigned long vect, void (* handler)(void *), void *arg);

/* Add exception vector handler */
void add_handler(unsigned long vector, void (* handler) (void));

/* Initialize routine */
int int_init();

/* Actual interrup handler function */
void int_main();

/* Function to clear all pending interrupts */
void int_clear_all_pending(void);

#endif // _INT_H_
