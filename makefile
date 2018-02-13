
all: LNSimulator

GPP = g++

CPPOPTS = -std=c++11

OBJS = main.o FeeCalculator.o PaymentRequest.o NetworkGenerator.o PaymentsGenerator.o PaymentChannel.o FeeCalculator.o PaymentChannelEndPoint.o Gateway.o LightningNetwork.o glpk/PaymentDeployer.o utils.o
OBJS += glpk/PaymentDeployerExact.o

ALL: LNSimulator

clean:
	rm -f *.o LNSim

%.o: %.cpp
	$(GPP) $(CPPOPTS) -c $< -o $@ 

LNSimulator: $(OBJS)
	$(GPP) $(OBJS) -o LNSim $(CPPOPTS)
