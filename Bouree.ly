\version "2.19.15"
\pointAndClickOff
#(set-global-staff-size 19)
\header {
  title = "Bouree"
  composer = "George Frideric Handel (1685-1759)"
  arranger = ""
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}

global = {
  \key f \major
  \time 4/4
 \tempo ""
 \partial 4
}
dyn = {
     \override DynamicTextSpanner.style = #'none
    s8\f s8-\markup {\concat {( \dynamic p } \italic {second time})} 
    s1
    s
    s
    s
    s
    s
    s
    s2. s4\p
    s1
    s
    s
    s
    s
    s
    s\< 
    s
    s4\f s2.\>
    s2. s4\p 
    s2 s2\<
    s1
    s\f 
}

right = \relative c'' {
  \global
  % En avant la musique !
  % \override TextSpanner.bound-details.left.text = "rit."
 \repeat volta 2 {  <a c>4-.
 
  <g c>( a)
  <e-1 bes'-4>8 a-. g-. f-.
  d'4-. f2( e8-.-3 )d-.
  c4-1 bes8-.-4 a-. <f g>-. a-. <e bes'>-. g-.
  <f a>4-. f2-2( <e g>4-.) \break
  <f-1 a-2>8-. b-. c-. a-.-1 b-. c-. d-. b-.-1
  c-. d-. e-. c-.-1 d-. e-. f-. d-.
  e( f g4-.) g,-. <d b'-4>-.
  <e c'>2. } 
 \break 
 g'4-.-5 
 g( e f8-.) e-. d-. c~( 
 <c f>4-.) <c a'>2 <g d'>4-.-3
 <a cis>-.-2 <a d>-.-2 <bes e>-.-3 <<{\voiceOne f'8( g f4-.)}
                                     \new Voice {\voiceTwo a,4~ a}
 >>
                                     \oneVoice
  <f d'>2 <g-1 c-4~>4( 
  <fis c'>-.) bes8-. a-. bes4-. <f-2 bes-4~>( \break  
  <e bes'>-.) a8-. g-. a4-. c-1(
  d8-. ) e-. f-. d-. e-. f-. g-. e-.-1
  f-. g-. a-. f-.-1 g-. a-. bes-. g-. 
  a4( g8-.) f-. e-.-2 f-. g-. e-.-1 \break 
  f-. g-. a-. f-.-1 g4-. <e bes'>-.
  <f a>( g8-.) f-. e-.-2 f-. g-. e-.-1 
  f-. g-. a-. f-. g-. a-. bes-. g-.
  a-. bes-. c4-. <c, a'>( <<{\voiceOne g'8 f}
                            \new Voice {\voiceTwo bes,4}
  >>
  \oneVoice
  <a f'>2.) \bar "|."

}

left = \relative c {
  \global
 f4-.-1 e( f) c-.-4 d-.
 bes-. <bes'-2 d-1> ( < a c>-. ) bes-.-2
 e,-.-5 f-.-1 bes,-.-3 c-.-2
 f, <a' c>2->( c4-.)
 f,-.-3 e-. d-. g-.
 e-. c'-. b-. g-.
 c( e,-. ) g-.-2 g-.
 c,-. g'-. c-. 
 <c e>-.
 <c-2 e>2. <bes e>4( 
 a-.-4) f( a-. ) bes-.
 a-1-. f-. g-. a8( cis
 d4-.) d,2 a'4-3(
 d-.) <fis, d'>-. <g d'>-. g(
 c-.) <e, c'>-. <f c'>-. a-3(
 bes-.) g-. c-. bes-.
 a-.-1 f-.-2 e-. c-.
 f-3( a-.-2 ) c-. c,-.
 d-. f-. e-. g-.
 f-3( a-.) c-. bes-.
 a-. f-. e-. c'-.
 f,-. a-. c-. c,-. 
 f-. c-. f,-.
  
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Dynamics \dyn 
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
