#
# Makefile para programas teste
#

CC=gcc
LIB_DIR=../lib
BIN_DIR=../bin
SRC_DIR=../src
BUILD_DIR=build
all: test-cidentify

test-cidentify:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/mysupport.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -o $(BUILD_DIR)/test-cidentify LGA_logger.o cthread.o mysupport.o test-cidentify.c -Wall

test-ccreate:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/LGA_support.c
	$(CC) -o $(BUILD_DIR)/test-ccreate LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-ccreate.c -Wall

test-cjoin:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/LGA_support.c
	$(CC) -o $(BUILD_DIR)/test-cjoin LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-cjoin.c -Wall

test-cjoin-critical:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/LGA_support.c
	$(CC) -o $(BUILD_DIR)/test-cjoin-critical LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-cjoin-critical.c -Wall

test-cyield:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/LGA_support.c
	$(CC) -o $(BUILD_DIR)/test-cyield LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-cyield.c -Wall

test-csuspend:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/LGA_support.c
	$(CC) -o $(BUILD_DIR)/test-csuspend LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-csuspend.c -Wall

test-cresume:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/LGA_support.c
	$(CC) -o $(BUILD_DIR)/test-cresume LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-cresume.c -Wall

test-global-suspension:
		rm -rf build
		mkdir $(BUILD_DIR)
		$(CC) -c $(SRC_DIR)/cthread.c
		$(CC) -c $(SRC_DIR)/LGA_logger.c
		$(CC) -c $(SRC_DIR)/LGA_support.c
		$(CC) -o $(BUILD_DIR)/test-global-suspension LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-global-suspension.c -Wall

test-mandel:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/LGA_support.c
	$(CC) -o $(BUILD_DIR)/test-mandel LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-mandel.c -Wall

test-series:
	rm -rf build
	mkdir $(BUILD_DIR)
	$(CC) -c $(SRC_DIR)/cthread.c
	$(CC) -c $(SRC_DIR)/LGA_logger.c
	$(CC) -c $(SRC_DIR)/LGA_support.c
	$(CC) -o $(BUILD_DIR)/test-series LGA_logger.o $(BIN_DIR)/support.o LGA_support.o cthread.o test-series.c -Wall

clean:
	rm -rf *.o *~ build