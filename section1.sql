/** Javier Palomares HW 7 **/

/**CREATE INDICES **/
CREATE INDEX a_pk_index on A_prime(pk);
CREATE INDEX a_ht_index on A_prime(ht);
CREATE INDEX a_tt_index on A_prime(tt);
CREATE INDEX a_ot_index on A_prime(ot);
CREATE INDEX a_hund_index on A_prime(hund);
CREATE INDEX a_ten_index on A_prime(ten);

CREATE INDEX b_pk_index on B_prime(pk);
CREATE INDEX b_ht_index on B_prime(ht);
CREATE INDEX b_tt_index on B_prime(tt);
CREATE INDEX b_ot_index on B_prime(ot);
CREATE INDEX b_hund_index on B_prime(hund);
CREATE INDEX b_ten_index on B_prime(ten);

CREATE INDEX c_pk_index on C_prime(pk);
CREATE INDEX c_ht_index on C_prime(ht);
CREATE INDEX c_tt_index on C_prime(tt);
CREATE INDEX c_ot_index on C_prime(ot);
CREATE INDEX c_hund_index on C_prime(hund);
CREATE INDEX c_ten_index on C_prime(ten);

PRAGMA automatic_index = FALSE;
/** Section 1 **/

/*1*/
EXPLAIN QUERY PLAN SELECT * FROM A JOIN B WHERE A.pk =B.pk;

/*2*/
EXPLAIN QUERY PLAN SELECT * FROM A JOIN B WHERE A.ht =B.ht;

/*3*/
EXPLAIN QUERY PLAN SELECT * FROM A_prime JOIN B_prime WHERE A_prime.ht =B_prime.ht;

/*4*/
EXPLAIN QUERY PLAN SELECT * FROM A JOIN B WHERE A.ten =B.ten;

/*5*/
EXPLAIN QUERY PLAN SELECT * FROM A_prime JOIN B_prime ON A_prime.ten =B_prime.ten;

/*6*/
EXPLAIN QUERY PLAN SELECT * FROM A JOIN B ON A.ht =B.ten;

/*7*/
EXPLAIN QUERY PLAN SELECT * FROM B JOIN A ON B.ten =A.ht;

/*8*/
EXPLAIN QUERY PLAN SELECT * FROM A JOIN B ON A.ht =B_prime.ten;

/*9*/
EXPLAIN QUERY PLAN SELECT * FROM B_prime JOIN A ON B_prime.ten = A.ht;

/* 3 way joins */
/*10*/
EXPLAIN QUERY PLAN SELECT * FROM A JOIN B ON A.ht = B.ht JOIN C ON B.ht = C.ht;

/*11*/
EXPLAIN QUERY PLAN SELECT * FROM A JOIN B ON A.ten = B.ten JOIN C ON B.ten = C.ten;

/*12 TODO: Check if 10 and 11 produce different results*/


