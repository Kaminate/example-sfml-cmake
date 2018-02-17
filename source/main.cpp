#include <iostream>
#include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

int main()
{
  sf::RenderWindow window( sf::VideoMode( 800, 600 ), "Project" );
  sf::Font font;
  if( !font.loadFromFile( "happyfont.ttf" ) )
    return EXIT_FAILURE;
  sf::Text text( "Hello World", font, 50 );
  text.setPosition( 50, 50 );

  while( window.isOpen() )
  {
    sf::Event event;
    while( window.pollEvent( event ) )
    {
      if( event.type == sf::Event::Closed )
        window.close();
    }
    window.clear();
    window.draw( text );
    window.display();
  }
  window.display();
  return EXIT_SUCCESS;
}
