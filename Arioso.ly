\version "2.19.15"
\pointAndClickOn
#(set-global-staff-size 19)
\header {
  title = "Arioso"
  composer = "Alessandro Scarlatti (1660-1725)"
  arranger = ""
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  left-margin = 2\cm
}

global = {
  \key d \minor
  \time 3/4
 \tempo "Adagio"
}
dyn = {
     \override DynamicTextSpanner.style = #'none
    s2.\mp
    s
    s
    s
    s
    s
    s
    s
    s\mf 
}

right = \relative c'' {
  \global
  \repeat volta 2 {
  % En avant la musique !
  % \override TextSpanner.bound-details.left.text = "rit."
  a'4-5 d,4. e8-3
  cis2-2 e4
  f2 d4
  bes'4. 8 a g \break 
  a4. 8 g f
  g4. 8-4 f e
  f4. e8 d e-3 
  cis2.-2 } \break
  a'2-3 4
  bes2 4
  a2 4
  g2 4-4 \break
   f d f
  es2 d4-1
  cis4.-2 bes'8-4 a g
  f g e4.-1 d8-3 \break 
  g,4. bes8-4 a g
  f d' e,4.-1 d8-2
  d2. \bar "|."
 
}

left = \relative c {
  \global
 d8-5 e f  e f g
 a-1 b-3 cis b cis a
 d d, f e f d
 g-2 f e g f e
 f-2 e d f e d
 e-2 d cis e d cis
 d-3 e f-1 g16-4 a bes8 g
 a2.
 a8-1 g fis e fis d
 g-1 f! e d e c
 f-1 e d c d bes
 e-1 d cis b! cis a
 d-2 e-1 f-2 e d f
 g f g-1 a-3 bes g
 a bes a-1 g f e
 d g a g a a, 
 bes-3 g a g' f e
 d-5 bes'-2 a4-1 a,
 <d f a>2.
  
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
