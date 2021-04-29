import zmq

ZMQ_PORT = 7008

context = zmq.Context()
recv = context.socket(zmq.PULL) # pylint: disable=no-member
recv.connect(f"tcp://127.0.0.1:{ZMQ_PORT}")

while True:
    work = recv.recv_json()
    print(work)