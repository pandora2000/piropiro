#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>
#include <strings.h>

#include "util.h"
#include "com.h"

static int g_fdCom = 0;
static struct termios g_oldOp;

static unsigned int getBaudRate(int baudRate){
	if (baudRate < 14400){
		return B9600;
	}
	else if (baudRate < 28800){
		return B19200;
	}
	else if (baudRate < 48000){
		return B38400;
	}
	else if (baudRate < 86400){
		return B57600;
	}
	else if (baudRate < 122800){
		return B115200;
	}
	else if (baudRate < 345600){
		return B230400;
	}
	else {
		return B460800;
	}

	return B0;
}

static printBaudRate(unsigned int baudRate){
	switch (baudRate){
		case B0:
			fprintf(stderr, "Using BaudRate 0(error)\n");
			break;
		case B9600:
			fprintf(stderr, "Using BaudRate 9600\n");
			break;
		case B19200:
			fprintf(stderr, "Using BaudRate 19200\n");
			break;
		case B38400:
			fprintf(stderr, "Using BaudRate 38400\n");
			break;
		case B57600:
			fprintf(stderr, "Using BaudRate 57600\n");
			break;
		case B115200:
			fprintf(stderr, "Using BaudRate 115200\n");
			break;
		case B230400:
			fprintf(stderr, "Using BaudRate 230400\n");
			break;
		case B460800:
			fprintf(stderr, "Using BaudRate 460800\n");
			break;
		default:
			fprintf(stderr, "Using Unknown BaudRate\n");
			break;
	}
}


static void setup_comm_parameters(int fdCom, const com_settings *cs)
{
	struct termios newOp;

	if (tcgetattr(fdCom, &g_oldOp) < 0){
		linux_error("Cannot get COM port status");
		exit(1);
	}
	bzero(&newOp, sizeof(newOp));

	newOp.c_cflag = getBaudRate(cs->baud) | CS8 | CLOCAL | CREAD;
	newOp.c_iflag = cs->parity_type;
	newOp.c_oflag = 0;
	newOp.c_lflag = 0;
	newOp.c_cc[VTIME] = 0;	// 25.5秒までしか指定できない？ 無視することに
	newOp.c_cc[VMIN] = 1;

	tcflush(fdCom, TCIFLUSH);
	if (tcsetattr(fdCom, TCSANOW, &newOp) < 0){
		linux_error("Cannot set COM port status");
		exit(1);
	}
	printBaudRate(getBaudRate(cs->baud));
}

void setup_comm(const com_settings* cs){
	int i = 0;
	for (i = 0; i < 5; ++i){
		char comport_name[32];
		sprintf(comport_name, "/dev/ttyUSB%d", i);
	
		g_fdCom = open(comport_name, O_RDWR | O_NOCTTY);
		if (g_fdCom < 0){
			linux_error("Cannot open USB%d port : ", i);
		}
		else if (g_fdCom > 0){
			fprintf(stderr, "Using /dev/ttyUSB%d\n", i);
			break;
		}
	}
	if (g_fdCom < 0){
		exit(1);
	}
	setup_comm_parameters(g_fdCom, cs);
	atexit(close_comm);
}

int com_getc()
{
	unsigned char buf;

	ssize_t nread = 0;
	do {
		nread = read(g_fdCom, &buf, 1);
		if (nread < 0){
			linux_error("Cannot read byte data : ");
			exit(1);
		}
	} while (nread == 0);
	//printf("getc : %c\n", buf);
	return buf & 0xff;
}

void com_putc(char c)
{
	ssize_t nwrite = 0;

	do {
		nwrite = write(g_fdCom, &c, 1);
		if (nwrite < 0){
			linux_error("Cannot write byte data : ");
			exit(1);
		}
	} while (nwrite == 0);
	unsigned char buf = c;
	printf("putc : %c\n", buf);
}

void com_write(char* buf, size_t size)
{
	ssize_t nwrite = 0;
	size_t  written = 0;
	while (written < size){
		nwrite = write(g_fdCom, buf + written, size - written);
		if (nwrite < 0){
			linux_error("Cannot write data : ");
			exit(1);
		}
		written += nwrite;
	}
	printf("write : ");
	nwrite = 0;
	written = 0;
	do {
		nwrite = write(STDOUT_FILENO, buf, size);
		written += nwrite;
	} while (written < size);
}

void close_comm()
{
	if (g_fdCom){
		if (tcsetattr(g_fdCom, TCSANOW, &g_oldOp) < 0){
			linux_error("Cannot set COM port status");
		}
		close(g_fdCom);
		g_fdCom = 0;
	}
}


