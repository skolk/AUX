#include <zmq.h>
#include <string>
#include <iostream>
#include <memory>
#include <sstream>
#include <stdio.h>

using namespace std;

int sendStringMessage(zmq::socket_t *s, string message)
{
  cout << "Sending message" << message << endl;
  // This makes an extra copy of the stl::string . . .  Don't use for big data etc. . .
  zmq::message_t msg(message.length());
  memcpy(msg.data(), message.c_str(), message.length() );
  s->send(msg);
  // ZMQ::message leave scope and gets clensed . . .
  return 0;
}

string recieveStringMessage(zmq::socket_t *s)
{
  // Allocate and recieve a message
  zmq::message_t rcv_msg;
  s->recv(&rcv_msg);

  // Allocate a empty string to throw the dataz in 
  string reply = "";
  reply.append((char*) rcv_msg.data(), rcv_msg.size());

  // Return string form
  return reply;
}

class ZMQ_Logger
{
  string *myName;
  zmq::context_t *ctx;
  zmq::socket_t  *skt;

public:
  void setup(string name, string address)
  {
    myName = new string(name.c_str());
    ctx    = new zmq::context_t(1);
    skt    = new zmq::socket_t(*ctx, ZMQ_PUB);
    skt->connect(address.c_str());
    
    // Wait for subscription hootnanny to get parsed
#ifdef linux
    usleep(1000*1000);
#else
    Sleep(1000);
#endif
  }

  ~ZMQ_Logger()
  {
    delete myName, ctx, skt;
  }

  void setup();
  void detail(string);
  void info(string);
  void error(string);
  void critical(string);
  void log( string, int);
};

  
void ZMQ_Logger::detail(string text)   { log(text, -1); }
void ZMQ_Logger::info(string text)     { log(text,  0); }
void ZMQ_Logger::error(string text)    { log(text,  1); }
void ZMQ_Logger::critical(string text) { log(text,  2); }

void ZMQ_Logger::log( string text, int level)
{
  // Concoct a string stream, and stick some stuff in it
  stringstream ss("");
  ss << "{\"text\":\"" <<  text << "\"," << "\"level\":" << level << "," << "\"source\":\"" << myName->c_str() << "\"}";

  // Send the message, and confirm successful reciept
  sendStringMessage(skt, ss.str());

  // MRG todo: throw on bad response?
  // cout << "Log Response:" << recieveStringMessage(skt) << endl;
}

void jamLogs(int number, string payload)
{
  // Init the logger
  ZMQ_Logger zmql;
  
  // Set a new name, and connection type
  zmql.setup(string("testName"), string("tcp://192.168.1.30:12345"));

  // Initial
  zmql.error("Herp derp!");
  for(int i=0; i < number; i++)
    {
      stringstream z;
      z << payload << " (" << i+1 << ")";
      zmql.info(z.str());
    }
}


int main(void)
{
  jamLogs(50, string("Lorem Ipsum Dolorum"));
  return 0;
}
