#include "Relay.h"

Relay::Relay(uint8_t pinOpen, uint8_t pinClose) {
  _pinOpen = pinOpen;
  _pinClose = pinClose;

  pinMode(_pinOpen, OUTPUT);
  pinMode(_pinClose, OUTPUT);

  // On startup, we don't know what the state of the system is.
  // We won't know until we call either open() or close().
  _hasBeenSet = false;
  _isOpen = false;
}

void Relay::open() {
  digitalWrite(_pinOpen, LOW);
  digitalWrite(_pinClose, HIGH);
  _hasBeenSet = true;
  _isOpen = true;
}

void Relay::close() {
  digitalWrite(_pinOpen, HIGH);
  digitalWrite(_pinClose, LOW);

  _hasBeenSet = true;
  _isOpen = false;
}

void Relay::setState(boolean _open) {
  if (_open) {
    open();
  } else {
    close();
  }
}

void Relay::hold() {
  digitalWrite(_pinOpen, HIGH);
  digitalWrite(_pinClose, HIGH);
}

boolean Relay::isOpen() {
  return _isOpen;
}

boolean Relay::hasBeenSet() {
  return _hasBeenSet;
}